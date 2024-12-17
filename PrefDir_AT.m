function [pre_dir, accuracy] = PrefDir_AT(Data, chan, DOF, norm)
%data- recorded data that's passed through prepData()
%chan- an array containing the desired channel numbers
%norm- 0:don't normalize directions, 1 or empty:normalize directions
%DOF- an array containing the desired DOFs from the kinematic data
%pre_dir is a DOFx# of channels matrix with the contribution of each
%kinematic direction to the channels firing


Measurement = double(Data.SpikeCount);
Kinematics = Data.Kinematics.Control;
Kinematics(:,7) = Data.Kinematics.CommVel; % add grasp

if ~exist('norm','var') || isempty(norm)
    norm = 1;
end

if size(Kinematics,2)<30
    Kinematics(:,size(Kinematics,2)+1:30) = zeros(size(Kinematics,1),30-size(Kinematics,2));
end

[Measurement, Kinematics, ~, featureMeans,featureStds]=PrepDataForTrain(Measurement,Kinematics,Data.TaskStateMasks);
close; close;
Measurement = Measurement -  ones(size(Measurement,1),1)*featureMeans;
Measurement = Measurement./(ones(size(Measurement,1),1)*featureStds);

% not cross validated

pre_dir = zeros(length(DOF)+1,length(chan));
for i = 1:length(chan)
    if ~all(isnan(Measurement(:,chan(i))))
        [pre_dir(:,i) , ~, ~, ~, stats]= regress(Measurement(:,chan(i)),cat(2,Kinematics(:,DOF),ones(size(Kinematics,1),1)));
        accuracy(:,i) = stats;
    else
        pre_dir(:,i) = nan(length(DOF)+1,1);
        accuracy(:,i) = zeros(4,1);
    end
end

pre_dir = pre_dir(1:end-1,:);

if norm
   DOFs = length(DOF);
   len = sqrt(sum(pre_dir.^2,1));
   pre_dir = pre_dir./repmat(len,DOFs,1);
end

nan_idx = find(isnan(pre_dir(1,:)));
pre_dir(:,nan_idx) = zeros(length(DOF),length(nan_idx));
accuracy(:,nan_idx) = [zeros(2,length(nan_idx));ones(2,length(nan_idx))];

% accuracy = stats = [r2 ~ p-val ~];

end