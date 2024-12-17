function [successfulTrials, numTrials, ReachTime, GraspTime, CarryTime, ReleaseTime, ...
    ReachLength_x, ReachLength_y, ReachLength_z, ReachLength_xyz, ReachEffic, ...
    CarryLength_x, CarryLength_y, CarryLength_z, CarryLength_xyz, CarryEffic] = kinematic_analysis(processed_Data)


% INPUTS:
    % processed_Data: data already processed with prepData()

% OUTPUTS:
    % successfulTrials: how many correct trials
    % numTrials: total trials attempted
    % ReachTime, GraspTime, CarryTime, ReleaseTime: time in each phase (max 10 sec)
    % ReachLength_x, ReachLength_y, ReachLength_z, CarryLength_x, CarryLength_y, CarryLength_z: path length for specific dimension normalized by max target distance
    % ReachLength_xyz, CarryLength_xyz: sum of normalized individual dimensions
    % ReachEffic, CarryEffic: path efficiency - total distance traveled divided by ideal path length


restrictM1 = zeros(1,1280);
allM1 = [1:5:316 481:5:956 1121:5:1276];
restrictM1(allM1) = ones(1,192);

successfulTrials = unique(processed_Data.trial_num(logical(processed_Data.TaskStateMasks.result_code))); % successful trials
numTrials = unique(processed_Data.trial_num);

ReachNum = find(strcmp(processed_Data.TaskStateMasks.states, 'Reach'));
GraspNum = find(strcmp(processed_Data.TaskStateMasks.states, 'Grasp'));
CarryNum = find(strcmp(processed_Data.TaskStateMasks.states, 'Carry'));
ReleaseNum = find(strcmp(processed_Data.TaskStateMasks.states, 'Release'));

States = processed_Data.TaskStateMasks.state_num;
Target = processed_Data.TaskStateMasks.target(1:7,:);
Measurement = double(processed_Data.SpikeCount(:,logical(restrictM1)));
Kinematics = processed_Data.Kinematics.Control(:,1:4);
Kinematics = [Kinematics processed_Data.Kinematics.CommVel];
Position = processed_Data.Kinematics.ActualPos;

[filtMeas, filtKin] = PrepDataForTest(Measurement,Kinematics);  %Standard 440 ms exponential filter

% initalize empty cells
Kin = cell(max(processed_Data.trial_num),1);
Meas = cell(max(processed_Data.trial_num),1);
State = cell(max(processed_Data.trial_num),1);
Targ = cell(max(processed_Data.trial_num),1);
Pos = cell(max(processed_Data.trial_num),1);

% pull info for each trial
for i = 1:max(processed_Data.trial_num)
    Kin{i} = filtKin(processed_Data.trial_num == i,:);
    Meas{i} = filtMeas(processed_Data.trial_num == i,:);
    State{i} = States(processed_Data.trial_num == i);
    Targ{i} = Target(:,processed_Data.trial_num == i);
    Pos{i} = Position(processed_Data.trial_num == i, 1:7)';
end

% time in each state
ReachTime = cellfun(@(x) sum(x == ReachNum), State);
GraspTime = cellfun(@(x) sum(x == GraspNum), State);
CarryTime = cellfun(@(x) sum(x == CarryNum), State);
ReleaseTime = cellfun(@(x) sum(x == ReleaseNum), State);

% calculate actual path length taken
ReachLength = cellfun(@(x,y) sum(sqrt(sum(x(y == ReachNum,1:3).^2,2))),Kin,State)/50; 
CarryLength = cellfun(@(x,y) sum(sqrt(sum(x(y == CarryNum,1:3).^2,2))),Kin,State)/50; 

% reach ideal from avg hand position during presentation to reach targ; norm calculates distance between 2 vectors
ReachIdeal = cellfun(@(x,y,z) norm(mode(x(1:3,y == ReachNum),2)-mode(z(1:3,y == ReachNum-1),2)),Targ,State,Pos);
% carry ideal from reach targ to carry targ
CarryIdeal = cellfun(@(x,y) norm(mode(x(1:3,y == CarryNum),2)-mode(x(1:3,y == GraspNum),2)),Targ,State); % targ at carry minus grasp

% calculate path efficiency
error = 0.08; % defined in config file
ReachEffic = abs(ReachLength./(ReachIdeal - error));
CarryEffic = abs(CarryLength./(CarryIdeal - error)); % abs to correct negative distances
 
% path length by dimension (x,y,z)
ReachLength_x = cellfun(@(x,y) sum(sqrt(x(y == ReachNum,1).^2)),Kin,State)/50; % Should be /50, to convert m/s to m/sample
ReachLength_y = cellfun(@(x,y) sum(sqrt(x(y == ReachNum,2).^2)),Kin,State)/50; 
ReachLength_z = cellfun(@(x,y) sum(sqrt(x(y == ReachNum,3).^2)),Kin,State)/50; 

CarryLength_x = cellfun(@(x,y) sum(sqrt(x(y == CarryNum,1).^2)),Kin,State)/50; 
CarryLength_y = cellfun(@(x,y) sum(sqrt(x(y == CarryNum,2).^2)),Kin,State)/50; 
CarryLength_z = cellfun(@(x,y) sum(sqrt(x(y == CarryNum,3).^2)),Kin,State)/50; 

% normalize path length by max path length (distance) for that dimension
max_x_length = max(processed_Data.TaskStateMasks.uni_targets(:,1)) - min(processed_Data.TaskStateMasks.uni_targets(:,1));
max_y_length = max(processed_Data.TaskStateMasks.uni_targets(:,2)) - min(processed_Data.TaskStateMasks.uni_targets(:,2));
max_z_length = max(processed_Data.TaskStateMasks.uni_targets(:,3)) - min(processed_Data.TaskStateMasks.uni_targets(:,3));

ReachLength_x = ReachLength_x./max_x_length;
ReachLength_y = ReachLength_y./max_y_length;
ReachLength_z = ReachLength_z./max_z_length;
ReachLength_xyz = sum([ReachLength_x,ReachLength_y,ReachLength_z],2);

CarryLength_x = CarryLength_x./max_x_length;
CarryLength_y = CarryLength_y./max_y_length;
CarryLength_z = CarryLength_z./max_z_length;
CarryLength_xyz = sum([CarryLength_x,CarryLength_y,CarryLength_z],2);

end