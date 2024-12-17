%% onlineControlAnalysis.m
% uses full brain control data from Participants C1 and P4 to assess performance metrics
% generates Figure 3, and Supplemental Figure 1
%% load data
% load data for C1 
load("C1_session317_TV_control.mat"); load("C1_session331_TV_control.mat"); load("C1_session333_TV_control.mat"); % TV sessions
load("C1_session317_VR_control.mat"); load("C1_session331_VR_control.mat"); load("C1_session333_VR_control.mat"); % VR sessions
C1_Data_TV = [Data_TV1_C1 Data_TV2_C1 Data_TV3_C1];
C1_Data_VR = [Data_VR1_C1 Data_VR2_C1 Data_VR3_C1];
%% load data for P4 (P4)
load("P4_session64_TV_control.mat"); load("P4_session82_TV_control.mat"); % TV sessions
load("P4_session64_VR_control.mat"); load("P4_session82_VR_control.mat"); % VR sessions
P4_Data_TV = [Data_TV1_P4 Data_TV2_P4];
P4_Data_VR = [Data_VR1_P4 Data_VR2_P4];
%% run kinematic analysis to assess performance
 
% C1 - loop over all 3 sessions
for i = 1:3
    [successfulTrials_TV_C1{i}, numTrials_TV_C1{i}, ReachTime_TV_C1{i}, GraspTime_TV_C1{i}, CarryTime_TV_C1{i}, ReleaseTime_TV_C1{i}, ...
        ReachLength_x_TV_C1{i}, ReachLength_y_TV_C1{i}, ReachLength_z_TV_C1{i}, ReachLength_xyz_TV_C1{i}, ReachEffic_TV_C1{i}, ...
        CarryLength_x_TV_C1{i}, CarryLength_y_TV_C1{i}, CarryLength_z_TV_C1{i}, CarryLength_xyz_TV_C1{i}, CarryEffic_TV_C1{i}] = kinematic_analysis(C1_Data_TV(i));
    
    [successfulTrials_VR_C1{i}, numTrials_VR_C1{i}, ReachTime_VR_C1{i}, GraspTime_VR_C1{i}, CarryTime_VR_C1{i}, ReleaseTime_VR_C1{i}, ...
        ReachLength_x_VR_C1{i}, ReachLength_y_VR_C1{i}, ReachLength_z_VR_C1{i}, ReachLength_xyz_VR_C1{i}, ReachEffic_VR_C1{i}, ...
        CarryLength_x_VR_C1{i}, CarryLength_y_VR_C1{i}, CarryLength_z_VR_C1{i}, CarryLength_xyz_VR_C1{i}, CarryEffic_VR_C1{i}] = kinematic_analysis(C1_Data_VR(i));
end
% concatenate all datasets for C1
% TV
successfulTrials_TV_C1_all = [successfulTrials_TV_C1{1} successfulTrials_TV_C1{2} successfulTrials_TV_C1{3}]'; numTrials_TV_C1_all = [numTrials_TV_C1{1} numTrials_TV_C1{2} numTrials_TV_C1{3}]';
ReachTime_TV_C1_all = [ReachTime_TV_C1{1}; ReachTime_TV_C1{2}; ReachTime_TV_C1{3}]; CarryTime_TV_C1_all = [CarryTime_TV_C1{1}; CarryTime_TV_C1{2}; CarryTime_TV_C1{3}];
ReachLength_x_TV_C1_all = [ReachLength_x_TV_C1{1}; ReachLength_x_TV_C1{2}; ReachLength_x_TV_C1{3}]; ReachLength_y_TV_C1_all = [ReachLength_y_TV_C1{1}; ReachLength_y_TV_C1{2}; ReachLength_y_TV_C1{3}];
ReachLength_z_TV_C1_all = [ReachLength_z_TV_C1{1}; ReachLength_z_TV_C1{2}; ReachLength_z_TV_C1{3}]; ReachLength_xyz_TV_C1_all = [ReachLength_xyz_TV_C1{1}; ReachLength_xyz_TV_C1{2}; ReachLength_xyz_TV_C1{3}];
ReachEffic_TV_C1_all = [ReachEffic_TV_C1{1}; ReachEffic_TV_C1{2}; ReachEffic_TV_C1{3}]; CarryEffic_TV_C1_all = [CarryEffic_TV_C1{1}; CarryEffic_TV_C1{2}; CarryEffic_TV_C1{3}];
CarryLength_x_TV_C1_all = [CarryLength_x_TV_C1{1}; CarryLength_x_TV_C1{2}; CarryLength_x_TV_C1{3}]; CarryLength_y_TV_C1_all = [CarryLength_y_TV_C1{1}; CarryLength_y_TV_C1{2}; CarryLength_y_TV_C1{3}];
CarryLength_z_TV_C1_all = [CarryLength_z_TV_C1{1}; CarryLength_z_TV_C1{2}; CarryLength_z_TV_C1{3}]; CarryLength_xyz_TV_C1_all = [CarryLength_xyz_TV_C1{1}; CarryLength_xyz_TV_C1{2}; CarryLength_xyz_TV_C1{3}];
% VR
successfulTrials_VR_C1_all = [successfulTrials_VR_C1{1} successfulTrials_VR_C1{2} successfulTrials_VR_C1{3}]'; numTrials_VR_C1_all = [numTrials_VR_C1{1} numTrials_VR_C1{2} numTrials_VR_C1{3}]';
ReachTime_VR_C1_all = [ReachTime_VR_C1{1}; ReachTime_VR_C1{2}; ReachTime_VR_C1{3}]; CarryTime_VR_C1_all = [CarryTime_VR_C1{1}; CarryTime_VR_C1{2}; CarryTime_VR_C1{3}];
ReachLength_x_VR_C1_all = [ReachLength_x_VR_C1{1}; ReachLength_x_VR_C1{2}; ReachLength_x_VR_C1{3}]; ReachLength_y_VR_C1_all = [ReachLength_y_VR_C1{1}; ReachLength_y_VR_C1{2}; ReachLength_y_VR_C1{3}];
ReachLength_z_VR_C1_all = [ReachLength_z_VR_C1{1}; ReachLength_z_VR_C1{2}; ReachLength_z_VR_C1{3}]; ReachLength_xyz_VR_C1_all = [ReachLength_xyz_VR_C1{1}; ReachLength_xyz_VR_C1{2}; ReachLength_xyz_VR_C1{3}];
ReachEffic_VR_C1_all = [ReachEffic_VR_C1{1}; ReachEffic_VR_C1{2}; ReachEffic_VR_C1{3}]; CarryEffic_VR_C1_all = [CarryEffic_VR_C1{1}; CarryEffic_VR_C1{2}; CarryEffic_VR_C1{3}];
CarryLength_x_VR_C1_all = [CarryLength_x_VR_C1{1}; CarryLength_x_VR_C1{2}; CarryLength_x_VR_C1{3}]; CarryLength_y_VR_C1_all = [CarryLength_y_VR_C1{1}; CarryLength_y_VR_C1{2}; CarryLength_y_VR_C1{3}];
CarryLength_z_VR_C1_all = [CarryLength_z_VR_C1{1}; CarryLength_z_VR_C1{2}; CarryLength_z_VR_C1{3}]; CarryLength_xyz_VR_C1_all = [CarryLength_xyz_VR_C1{1}; CarryLength_xyz_VR_C1{2}; CarryLength_xyz_VR_C1{3}];

% P4 - loop over all 2 sessions
for i = 1:2
    [successfulTrials_TV_P4{i}, numTrials_TV_P4{i}, ReachTime_TV_P4{i}, GraspTime_TV_P4{i}, CarryTime_TV_P4{i}, ReleaseTime_TV_P4{i}, ...
        ReachLength_x_TV_P4{i}, ReachLength_y_TV_P4{i}, ReachLength_z_TV_P4{i}, ReachLength_xyz_TV_P4{i}, ReachEffic_TV_P4{i}, ...
        CarryLength_x_TV_P4{i}, CarryLength_y_TV_P4{i}, CarryLength_z_TV_P4{i}, CarryLength_xyz_TV_P4{i}, CarryEffic_TV_P4{i}] = kinematic_analysis(P4_Data_TV(i));
    
    [successfulTrials_VR_P4{i}, numTrials_VR_P4{i}, ReachTime_VR_P4{i}, GraspTime_VR_P4{i}, CarryTime_VR_P4{i}, ReleaseTime_VR_P4{i}, ...
        ReachLength_x_VR_P4{i}, ReachLength_y_VR_P4{i}, ReachLength_z_VR_P4{i}, ReachLength_xyz_VR_P4{i}, ReachEffic_VR_P4{i}, ...
        CarryLength_x_VR_P4{i}, CarryLength_y_VR_P4{i}, CarryLength_z_VR_P4{i}, CarryLength_xyz_VR_P4{i}, CarryEffic_VR_P4{i}] = kinematic_analysis(P4_Data_VR(i));
end
% concatenate all datasets for P4
% TV
successfulTrials_TV_P4_all = [successfulTrials_TV_P4{1} successfulTrials_TV_P4{2}]'; numTrials_TV_P4_all = [numTrials_TV_P4{1} numTrials_TV_P4{2}]';
ReachTime_TV_P4_all = [ReachTime_TV_P4{1}; ReachTime_TV_P4{2}]; CarryTime_TV_P4_all = [CarryTime_TV_P4{1}; CarryTime_TV_P4{2}];
ReachLength_x_TV_P4_all = [ReachLength_x_TV_P4{1}; ReachLength_x_TV_P4{2}]; ReachLength_y_TV_P4_all = [ReachLength_y_TV_P4{1}; ReachLength_y_TV_P4{2}];
ReachLength_z_TV_P4_all = [ReachLength_z_TV_P4{1}; ReachLength_z_TV_P4{2}]; ReachLength_xyz_TV_P4_all = [ReachLength_xyz_TV_P4{1}; ReachLength_xyz_TV_P4{2}];
ReachEffic_TV_P4_all = [ReachEffic_TV_P4{1}; ReachEffic_TV_P4{2}]; CarryEffic_TV_P4_all = [CarryEffic_TV_P4{1}; CarryEffic_TV_P4{2}];
CarryLength_x_TV_P4_all = [CarryLength_x_TV_P4{1}; CarryLength_x_TV_P4{2}]; CarryLength_y_TV_P4_all = [CarryLength_y_TV_P4{1}; CarryLength_y_TV_P4{2}];
CarryLength_z_TV_P4_all = [CarryLength_z_TV_P4{1}; CarryLength_z_TV_P4{2}]; CarryLength_xyz_TV_P4_all = [CarryLength_xyz_TV_P4{1}; CarryLength_xyz_TV_P4{2}];
% VR
successfulTrials_VR_P4_all = [successfulTrials_VR_P4{1} successfulTrials_VR_P4{2}]'; numTrials_VR_P4_all = [numTrials_VR_P4{1} numTrials_VR_P4{2}]';
ReachTime_VR_P4_all = [ReachTime_VR_P4{1}; ReachTime_VR_P4{2}]; CarryTime_VR_P4_all = [CarryTime_VR_P4{1}; CarryTime_VR_P4{2}];
ReachLength_x_VR_P4_all = [ReachLength_x_VR_P4{1}; ReachLength_x_VR_P4{2}]; ReachLength_y_VR_P4_all = [ReachLength_y_VR_P4{1}; ReachLength_y_VR_P4{2}];
ReachLength_z_VR_P4_all = [ReachLength_z_VR_P4{1}; ReachLength_z_VR_P4{2}]; ReachLength_xyz_VR_P4_all = [ReachLength_xyz_VR_P4{1}; ReachLength_xyz_VR_P4{2}];
ReachEffic_VR_P4_all = [ReachEffic_VR_P4{1}; ReachEffic_VR_P4{2}]; CarryEffic_VR_P4_all = [CarryEffic_VR_P4{1}; CarryEffic_VR_P4{2}];
CarryLength_x_VR_P4_all = [CarryLength_x_VR_P4{1}; CarryLength_x_VR_P4{2}]; CarryLength_y_VR_P4_all = [CarryLength_y_VR_P4{1}; CarryLength_y_VR_P4{2}];
CarryLength_z_VR_P4_all = [CarryLength_z_VR_P4{1}; CarryLength_z_VR_P4{2}]; CarryLength_xyz_VR_P4_all = [CarryLength_xyz_VR_P4{1}; CarryLength_xyz_VR_P4{2}];

%% failure rates
% failure rates - reach - C1
reachFailure_TV_1_C1 = (sum(ReachTime_TV_C1{1}>=500)/(sum(ReachTime_TV_C1{1}>=g)))*100; % (num fail trials)/(total num trials for epoch - num trials failed before that epoch)*100
reachFailure_VR_1_C1 = (sum(ReachTime_VR_C1{1}>=500)/(sum(ReachTime_VR_C1{1}>=g)))*100; % (num failed trials) / (num trials in that epoch) * 100 = failure rate (excluding trials less than 10 bins)
reachFailure_TV_2_C1 = (sum(ReachTime_TV_C1{2}>=500)/(sum(ReachTime_TV_C1{2}>=g)))*100;
reachFailure_VR_2_C1 = (sum(ReachTime_VR_C1{2}>=500)/(sum(ReachTime_VR_C1{2}>=g)))*100;
reachFailure_TV_3_C1 = (sum(ReachTime_TV_C1{3}>=500)/(sum(ReachTime_TV_C1{3}>=g)))*100;
reachFailure_VR_3_C1 = (sum(ReachTime_VR_C1{3}>=500)/(sum(ReachTime_VR_C1{3}>=g)))*100;
% failure rates - carry - C1
carryFailure_TV_1_C1 = (sum(CarryTime_TV_C1{1}>=500)/(sum(CarryTime_TV_C1{1}>=g)))*100;
carryFailure_VR_1_C1 = (sum(CarryTime_VR_C1{1}>=500)/(sum(CarryTime_VR_C1{1}>=g)))*100;
carryFailure_TV_2_C1 = (sum(CarryTime_TV_C1{2}>=500)/(sum(CarryTime_TV_C1{2}>=g)))*100;
carryFailure_VR_2_C1 = (sum(CarryTime_VR_C1{2}>=500)/(sum(CarryTime_VR_C1{2}>=g)))*100;
carryFailure_TV_3_C1 = (sum(CarryTime_TV_C1{3}>=500)/(sum(CarryTime_TV_C1{3}>=g)))*100;
carryFailure_VR_3_C1 = (sum(CarryTime_VR_C1{3}>=500)/(sum(CarryTime_VR_C1{3}>=g)))*100;
% failure rates - overall - C1
reachFailure_TV_C1 = (sum(ReachTime_TV_C1_all>=500)/(sum(ReachTime_TV_C1_all>=g)))*100;
reachFailure_VR_C1 = (sum(ReachTime_VR_C1_all>=500)/(sum(ReachTime_VR_C1_all>=g)))*100;
carryFailure_TV_C1 = (sum(CarryTime_TV_C1_all>=500)/(sum(CarryTime_TV_C1_all>=g)))*100;
carryFailure_VR_C1 = (sum(CarryTime_VR_C1_all>=500)/(sum(CarryTime_VR_C1_all>=g)))*100;

% failure rates - reach - C1
reachFailure_TV_1_P4 = (sum(ReachTime_TV_P4{1}>=500)/(sum(ReachTime_TV_P4{1}>=g)))*100; % (num fail trials)/(total num trials for epoch - num trials failed before that epoch)*100
reachFailure_VR_1_P4 = (sum(ReachTime_VR_P4{1}>=500)/(sum(ReachTime_VR_P4{1}>=g)))*100; % (num failed trials) / (num trials in that epoch) * 100 = failure rate (excluding trials less than 10 bins)
reachFailure_TV_2_P4 = (sum(ReachTime_TV_P4{2}>=500)/(sum(ReachTime_TV_P4{2}>=g)))*100;
reachFailure_VR_2_P4 = (sum(ReachTime_VR_P4{2}>=500)/(sum(ReachTime_VR_P4{2}>=g)))*100;
% failure rates - carry - C1
carryFailure_TV_1_P4 = (sum(CarryTime_TV_P4{1}>=500)/(sum(CarryTime_TV_P4{1}>=g)))*100;
carryFailure_VR_1_P4 = (sum(CarryTime_VR_P4{1}>=500)/(sum(CarryTime_VR_P4{1}>=g)))*100;
carryFailure_TV_2_P4 = (sum(CarryTime_TV_P4{2}>=500)/(sum(CarryTime_TV_P4{2}>=g)))*100;
carryFailure_VR_2_P4 = (sum(CarryTime_VR_P4{2}>=500)/(sum(CarryTime_VR_P4{2}>=g)))*100;
% failure rates - overall - P4
reachFailure_TV_P4 = (sum(ReachTime_TV_P4_all>=500)/(sum(ReachTime_TV_P4_all>=g)))*100;
reachFailure_VR_P4 = (sum(ReachTime_VR_P4_all>=500)/(sum(ReachTime_VR_P4_all>=g)))*100;
carryFailure_TV_P4 = (sum(CarryTime_TV_P4_all>=500)/(sum(CarryTime_TV_P4_all>=g)))*100;
carryFailure_VR_P4 = (sum(CarryTime_VR_P4_all>=500)/(sum(CarryTime_VR_P4_all>=g)))*100;

%% test significance
g = 10; % exclude anything less than 10 time bins ~200ms
% time
p.reachTime_C1 = ranksum(ReachTime_VR_C1_all(ReachTime_VR_C1_all>g)/50, ReachTime_TV_C1_all(ReachTime_TV_C1_all>g)/50);
p.reachTime_P4 = ranksum(ReachTime_VR_P4_all(ReachTime_VR_P4_all>g)/50, ReachTime_TV_P4_all(ReachTime_TV_P4_all>g)/50);
p.carryTime_C1 = ranksum(CarryTime_VR_C1_all(CarryTime_VR_C1_all>g)/50, CarryTime_TV_C1_all(CarryTime_TV_C1_all>g)/50);
p.carryTime_P4 = ranksum(CarryTime_VR_P4_all(CarryTime_VR_P4_all>g)/50, CarryTime_TV_P4_all(CarryTime_TV_P4_all>g)/50);
% path efficiency
p.reachEffic_C1 = ranksum(ReachEffic_VR_C1_all(ReachTime_VR_C1_all>g), ReachEffic_TV_C1_all(ReachTime_TV_C1_all>g));
p.reachEffic_P4 = ranksum(ReachEffic_VR_P4_all(ReachTime_VR_P4_all>g), ReachEffic_TV_P4_all(ReachTime_TV_P4_all>g));
p.carryEffic_C1 = ranksum(CarryEffic_VR_C1_all(CarryTime_VR_C1_all>g), CarryEffic_TV_C1_all(CarryTime_TV_C1_all>g));
p.carryEffic_P4 = ranksum(CarryEffic_VR_P4_all(CarryTime_VR_P4_all>g), CarryEffic_TV_P4_all(CarryTime_TV_P4_all>g));
% overall paths
p.reachPath_C1 = ranksum(ReachLength_xyz_VR_C1_all(ReachTime_VR_C1_all>g), ReachLength_xyz_TV_C1_all(ReachTime_TV_C1_all>g));
p.reachPath_P4 = ranksum(ReachLength_xyz_VR_P4_all(ReachTime_VR_P4_all>g), ReachLength_xyz_TV_P4_all(ReachTime_TV_P4_all>g));
p.carryPath_C1 = ranksum(CarryLength_xyz_VR_C1_all(CarryTime_VR_C1_all>g), CarryLength_xyz_TV_C1_all(CarryTime_TV_C1_all>g));
p.carryPath_P4 = ranksum(CarryLength_xyz_VR_P4_all(CarryTime_VR_P4_all>g), CarryLength_xyz_TV_P4_all(CarryTime_TV_P4_all>g));
% by individual dimension
p.reachPath_x_C1 = ranksum(ReachLength_x_VR_C1_all(ReachTime_VR_C1_all>g), ReachLength_x_TV_C1_all(ReachTime_TV_C1_all>g));
p.reachPath_x_P4 = ranksum(ReachLength_x_VR_P4_all(ReachTime_VR_P4_all>g), ReachLength_x_TV_P4_all(ReachTime_TV_P4_all>g));
p.carryPath_x_C1 = ranksum(CarryLength_x_VR_C1_all(CarryTime_VR_C1_all>g), CarryLength_x_TV_C1_all(CarryTime_TV_C1_all>g));
p.carryPath_x_P4 = ranksum(CarryLength_x_VR_P4_all(CarryTime_VR_P4_all>g), CarryLength_x_TV_P4_all(CarryTime_TV_P4_all>g));
p.reachPath_y_C1 = ranksum(ReachLength_y_VR_C1_all(ReachTime_VR_C1_all>g), ReachLength_y_TV_C1_all(ReachTime_TV_C1_all>g));
p.reachPath_y_P4 = ranksum(ReachLength_y_VR_P4_all(ReachTime_VR_P4_all>g), ReachLength_y_TV_P4_all(ReachTime_TV_P4_all>g));
p.carryPath_y_C1 = ranksum(CarryLength_y_VR_C1_all(CarryTime_VR_C1_all>g), CarryLength_y_TV_C1_all(CarryTime_TV_C1_all>g));
p.carryPath_y_P4 = ranksum(CarryLength_y_VR_P4_all(CarryTime_VR_P4_all>g), CarryLength_y_TV_P4_all(CarryTime_TV_P4_all>g));
p.reachPath_z_C1 = ranksum(ReachLength_z_VR_C1_all(ReachTime_VR_C1_all>g), ReachLength_z_TV_C1_all(ReachTime_TV_C1_all>g));
p.reachPath_z_P4 = ranksum(ReachLength_z_VR_P4_all(ReachTime_VR_P4_all>g), ReachLength_z_TV_P4_all(ReachTime_TV_P4_all>g));
p.carryPath_z_C1 = ranksum(CarryLength_z_VR_C1_all(CarryTime_VR_C1_all>g), CarryLength_z_TV_C1_all(CarryTime_TV_C1_all>g));
p.carryPath_z_P4 = ranksum(CarryLength_z_VR_P4_all(CarryTime_VR_P4_all>g), CarryLength_z_TV_P4_all(CarryTime_TV_P4_all>g));

%% Chi squared test
% with 2 groups of different sizes;
score1 = ReachTime_TV_C1_all(ReachTime_TV_C1_all>=g)>=500;  % 1 = true, 0 = false
score2 = ReachTime_VR_C1_all(ReachTime_VR_C1_all>=g)>=500;
% Make some vectors to code the groups
cod1 = 0*score1 + 1; cod2 = 0*score2 + 2; codes = [cod1; cod2];
scores = [score1; score2];
[tbl, chisq, p.reachFailRates_C1] = crosstab(codes,scores);

score3 = ReachTime_TV_P4_all(ReachTime_TV_P4_all>=g)>=500;  % 1 = true, 0 = false
score4 = ReachTime_VR_P4_all(ReachTime_VR_P4_all>=g)>=500;
cod3 = 0*score3 + 1; cod4 = 0*score4 + 2; codes2 = [cod3; cod4];
scores2 = [score3; score4];
[tbl, chisq, p.reachFailRates_P4] = crosstab(codes2,scores2);

score1 = CarryTime_TV_C1_all(CarryTime_TV_C1_all>=g)>=500;  % 1 = true, 0 = false
score2 = CarryTime_VR_C1_all(CarryTime_VR_C1_all>=g)>=500;
cod1 = 0*score1 + 1; cod2 = 0*score2 + 2; codes = [cod1; cod2];
scores = [score1; score2];
[tbl, chisq, p.carryFailRates_C1] = crosstab(codes,scores);

score3 = CarryTime_TV_P4_all(CarryTime_TV_P4_all>=g)>=500;  % 1 = true, 0 = false
score4 = CarryTime_VR_P4_all(CarryTime_VR_P4_all>=g)>=500;
cod3 = 0*score3 + 1; cod4 = 0*score4 + 2; codes2 = [cod3; cod4];
scores2 = [score3; score4];
[tbl, chisq, p.carryFailRates_P4] = crosstab(codes2,scores2);

% all success rate tests - C1
score3 = ismember([1:length(numTrials_VR_C1_all)]',[1:length(successfulTrials_VR_C1_all)]);  % 1 = true, 0 = false
score4 = ismember([1:length(numTrials_TV_C1_all)]',[1:length(successfulTrials_TV_C1_all)]);
cod3 = 0*score3 + 1; cod4 = 0*score4 + 2; codes2 = [cod3; cod4];
scores2 = [score3; score4];
[tbl, chisq, p.successOverall_C1] = crosstab(codes2,scores2);

% all success rate tests - P4
score3 = ismember([1:length(numTrials_VR_P4_all)]',[1:length(successfulTrials_VR_P4_all)]);  % 1 = true, 0 = false
score4 = ismember([1:length(numTrials_TV_P4_all)]',[1:length(successfulTrials_TV_P4_all)]);
cod3 = 0*score3 + 1; cod4 = 0*score4 + 2; codes2 = [cod3; cod4];
scores2 = [score3; score4];
[tbl, chisq, p.successOverall_P4] = crosstab(codes2,scores2);

%% medians
% failure rates
m.reachFailRate_VR_C1 = (sum(ReachTime_VR_C1_all(ReachTime_VR_C1_all>=g)>=500)/sum(ReachTime_VR_C1_all>=g))*100;
m.reachFailRate_TV_C1 = (sum(ReachTime_TV_C1_all(ReachTime_TV_C1_all>=g)>=500)/sum(ReachTime_TV_C1_all>=g))*100;
m.reachFailRate_VR_P4 = (sum(ReachTime_VR_P4_all(ReachTime_VR_P4_all>=g)>=500)/sum(ReachTime_VR_P4_all>=g))*100;
m.reachFailRate_TV_P4 = (sum(ReachTime_TV_P4_all(ReachTime_TV_P4_all>=g)>=500)/sum(ReachTime_TV_P4_all>=g))*100;
m.carryFailRate_VR_C1 = (sum(CarryTime_VR_C1_all(CarryTime_VR_C1_all>=g)>=500)/sum(CarryTime_VR_C1_all>=g))*100;
m.carryFailRate_TV_C1 = (sum(CarryTime_TV_C1_all(ReachTime_TV_C1_all>=g)>=500)/sum(CarryTime_TV_C1_all>=g))*100;
m.carryFailRate_VR_P4 = (sum(CarryTime_VR_P4_all(CarryTime_VR_P4_all>=g)>=500)/sum(CarryTime_VR_P4_all>=g))*100;
m.carryFailRate_TV_P4 = (sum(CarryTime_TV_P4_all(CarryTime_TV_P4_all>=g)>=500)/sum(CarryTime_TV_P4_all>=g))*100;
% overall success rates
m.overallSuccess_VR_C1 = length(successfulTrials_VR_C1_all)/length(numTrials_VR_C1_all);
m.overallSuccess_TV_C1 = length(successfulTrials_TV_C1_all)/length(numTrials_TV_C1_all);
m.overallSuccess_VR_P4 = length(successfulTrials_VR_P4_all)/length(numTrials_VR_P4_all);
m.overallSuccess_TV_P4 = length(successfulTrials_TV_P4_all)/length(numTrials_TV_P4_all);
% completion times
m.reachTime_VR_C1 = median(ReachTime_VR_C1_all(ReachTime_VR_C1_all>g)/50);
m.reachTime_TV_C1 = median(ReachTime_TV_C1_all(ReachTime_TV_C1_all>g)/50);
m.carryTime_VR_C1 = median(CarryTime_VR_C1_all(CarryTime_VR_C1_all>g)/50);
m.carryTime_TV_C1 = median(CarryTime_TV_C1_all(CarryTime_TV_C1_all>g)/50);
m.reachTime_VR_P4 = median(ReachTime_VR_P4_all(ReachTime_VR_P4_all>g)/50);
m.reachTime_TV_P4 = median(ReachTime_TV_P4_all(ReachTime_TV_P4_all>g)/50);
m.carryTime_VR_P4 = median(CarryTime_VR_P4_all(CarryTime_VR_P4_all>g)/50);
m.carryTime_TV_P4 = median(CarryTime_TV_P4_all(CarryTime_TV_P4_all>g)/50);
% path efficiency
m.reachEffic_VR_C1 = median(ReachEffic_VR_C1_all(ReachTime_VR_C1_all>g));
m.reachEffic_TV_C1 = median(ReachEffic_TV_C1_all(ReachTime_TV_C1_all>g));
m.carryEffic_VR_C1 = median(CarryEffic_VR_C1_all(CarryTime_VR_C1_all>g));
m.carryEffic_TV_C1 = median(CarryEffic_TV_C1_all(CarryTime_TV_C1_all>g));
m.reachEffic_VR_P4 = median(ReachEffic_VR_P4_all(ReachTime_VR_P4_all>g));
m.reachEffic_TV_P4 = median(ReachEffic_TV_P4_all(ReachTime_TV_P4_all>g));
m.carryEffic_VR_P4 = median(CarryEffic_VR_P4_all(CarryTime_VR_P4_all>g));
m.carryEffic_TV_P4 = median(CarryEffic_TV_P4_all(CarryTime_TV_P4_all>g));
% by individual dimension
% x - C1
m.reachPath_x_VR_C1 = median(ReachLength_x_VR_C1_all(ReachTime_VR_C1_all>g));
m.reachPath_x_TV_C1 = median(ReachLength_x_TV_C1_all(ReachTime_TV_C1_all>g));
m.carryPath_x_VR_C1 = median(CarryLength_x_VR_C1_all(CarryTime_VR_C1_all>g));
m.carryPath_x_TV_C1 = median(CarryLength_x_TV_C1_all(CarryTime_TV_C1_all>g));
% y
m.reachPath_y_VR_C1 = median(ReachLength_y_VR_C1_all(ReachTime_VR_C1_all>g));
m.reachPath_y_TV_C1 = median(ReachLength_y_TV_C1_all(ReachTime_TV_C1_all>g));
m.carryPath_y_VR_C1 = median(CarryLength_y_VR_C1_all(CarryTime_VR_C1_all>g));
m.carryPath_y_TV_C1 = median(CarryLength_y_TV_C1_all(CarryTime_TV_C1_all>g));
%z
m.reachPath_z_VR_C1 = median(ReachLength_z_VR_C1_all(ReachTime_VR_C1_all>g));
m.reachPath_z_TV_C1 = median(ReachLength_z_TV_C1_all(ReachTime_TV_C1_all>g));
m.carryPath_z_VR_C1 = median(CarryLength_z_VR_C1_all(CarryTime_VR_C1_all>g));
m.carryPath_z_TV_C1 = median(CarryLength_z_TV_C1_all(CarryTime_TV_C1_all>g));
% x - P4
m.reachPath_x_VR_P4 = median(ReachLength_x_VR_P4_all(ReachTime_VR_P4_all>g));
m.reachPath_x_TV_P4 = median(ReachLength_x_TV_P4_all(ReachTime_TV_P4_all>g));
m.carryPath_x_VR_P4 = median(CarryLength_x_VR_P4_all(CarryTime_VR_P4_all>g));
m.carryPath_x_TV_P4 = median(CarryLength_x_TV_P4_all(CarryTime_TV_P4_all>g));
% y
m.reachPath_y_VR_P4 = median(ReachLength_y_VR_P4_all(ReachTime_VR_P4_all>g));
m.reachPath_y_TV_P4 = median(ReachLength_y_TV_P4_all(ReachTime_TV_P4_all>g));
m.carryPath_y_VR_P4 = median(CarryLength_y_VR_P4_all(CarryTime_VR_P4_all>g));
m.carryPath_y_TV_P4 = median(CarryLength_y_TV_P4_all(CarryTime_TV_P4_all>g));
%z
m.reachPath_z_VR_P4 = median(ReachLength_z_VR_P4_all(ReachTime_VR_P4_all>g));
m.reachPath_z_TV_P4 = median(ReachLength_z_TV_P4_all(ReachTime_TV_P4_all>g));
m.carryPath_z_VR_P4 = median(CarryLength_z_VR_P4_all(CarryTime_VR_P4_all>g));
m.carryPath_z_TV_P4 = median(CarryLength_z_TV_P4_all(CarryTime_TV_P4_all>g));

%% define parameters for plotting
set(0,'DefaultFigureWindowStyle','docked')
% define color palette
cBlack = [0 0 0]; % color median line black
cVR = [0.9290 0.6940 0.1250]; % yellow
cTV = [0.3010 0.7450 0.9330]; % blue

%% Figure 3

% Failure Rates - Figure 3A
% reach
figure; subplot(1,2,1); hold on
bar(0.9,reachFailure_VR_C1, 0.55, 'FaceColor',cVR, 'FaceAlpha',0.5, 'EdgeColor',cVR)
bar(1.55,reachFailure_TV_C1, 0.55, 'FaceColor',cTV, 'FaceAlpha',0.5, 'EdgeColor',cTV)
plot([0.9,1.55], [reachFailure_VR_1_C1, reachFailure_TV_1_C1], 'Color', 'k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([0.9,1.55], [reachFailure_VR_2_C1, reachFailure_TV_2_C1], 'Color','k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([0.9,1.55], [reachFailure_VR_3_C1, reachFailure_TV_3_C1], 'Color','k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
% p4
bar(2.4,reachFailure_VR_P4, 0.55,'FaceColor',cVR, 'FaceAlpha',0.5, 'EdgeColor',cVR)
bar(3.05,reachFailure_TV_P4, 0.55, 'FaceColor',cTV, 'FaceAlpha',0.5, 'EdgeColor',cTV)
plot([2.4,3.05], [reachFailure_VR_1_P4, reachFailure_TV_1_P4], 'Color', 'k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([2.4,3.05], [reachFailure_VR_2_P4, reachFailure_TV_2_P4], 'Color', 'k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
ylim([0 23]); xlim([0.5 3.5]); ax = gca; ax.XTick = [0.9 1.225 1.55 2.4 2.725 3.05]; axis square; ax.FontSize  = 16; set(gcf, 'Color', 'w')
set(gca(),'XTickLabel',{'VR',sprintf('\\newlineParticipant C1'), 'TV','VR',sprintf('\\newlineParticipant P4'), 'TV'}); xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
title('Reach') ; ylabel('% Failed Trials')
% transport
subplot(1,2,2); hold on
bar(0.9,carryFailure_VR_C1, 0.55, 'FaceColor',cVR, 'FaceAlpha',0.5, 'EdgeColor',cVR)
bar(1.55,carryFailure_TV_C1, 0.55, 'FaceColor',cTV, 'FaceAlpha',0.5, 'EdgeColor',cTV)
plot([0.9,1.55], [carryFailure_VR_1_C1, carryFailure_TV_1_C1], 'Color','k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([0.9,1.55], [carryFailure_VR_2_C1, carryFailure_TV_2_C1], 'Color','k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([0.9,1.55], [carryFailure_VR_3_C1, carryFailure_TV_3_C1], 'Color','k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
% p4
bar(2.4,carryFailure_VR_P4, 0.55, 'FaceColor',cVR, 'FaceAlpha',0.5, 'EdgeColor',cVR)
bar(3.05,carryFailure_TV_P4, 0.55, 'FaceColor',cTV, 'FaceAlpha',0.5, 'EdgeColor',cTV) % modify line below to add more sessions
plot([2.4,3.05], [carryFailure_VR_1_P4, carryFailure_TV_1_P4], 'Color', 'k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([2.4,3.05], [carryFailure_VR_2_P4, carryFailure_TV_2_P4], 'Color', 'k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
ylim([0 23]); xlim([0.5 3.5]); ax = gca; ax.XTick = [0.9 1.225 1.55 2.4 2.725 3.05]; axis square; ax.FontSize  = 16; set(gcf, 'Color', 'w')
set(gca(),'XTickLabel',{'VR',sprintf('\\newlineParticipant C1'), 'TV','VR',sprintf('\\newlineParticipant P4'), 'TV'}); xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
title('Transport'); 

% Completion Times - Figure3B
figure;
% reach
subplot(1,2,1)
hold on
maxKD_VR = Swarm(1,ReachTime_VR_C1_all(ReachTime_VR_C1_all>g)/50, 'DistributionStyle','Violin','KDBW',0.6,'CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(1.6,ReachTime_TV_C1_all(ReachTime_TV_C1_all>g)/50, 'DistributionStyle','Violin','KDBW',0.6,'CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(1:0.1:1.6,repmat(maxKD+0.75,7),'black','LineWidth',1.5); text(1.25,maxKD+1.1,'*', FontSize=20)
maxKD_VR = Swarm(2.8,ReachTime_VR_P4_all(ReachTime_VR_P4_all>g)/50, 'DistributionStyle','Violin','KDBW',0.6,'CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(3.4,ReachTime_TV_P4_all(ReachTime_TV_P4_all>g)/50, 'DistributionStyle','Violin','KDBW',0.6,'CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(2.8:0.1:3.4,repmat(maxKD+0.75,7),'black','LineWidth',1.5); text(3.05,maxKD+1.1,'***', FontSize=20)
title('Reach'); ylabel('Completion Time (s)')
ax = gca;ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];axis([0.5 4 0 12.5]); axis square
ax.XTick = [1 1.3 1.6 2.8 3.1 3.4];
set(gca(),'XTickLabel',{'VR',sprintf('\\newlineParticipant C1'), 'TV','VR',sprintf('\\newlineParticipant P4'),'TV'});
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
% transport
subplot(1,2,2)
hold on
maxKD_VR = Swarm(1,CarryTime_VR_C1_all(CarryTime_VR_C1_all>g)/50, 'DistributionStyle','Violin','KDBW',0.6,'CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(1.6,CarryTime_TV_C1_all(CarryTime_TV_C1_all>g)/50, 'DistributionStyle','Violin','KDBW',0.6,'CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(1:0.1:1.6,repmat(maxKD+0.75,7),'black','LineWidth',1.5); text(1.23,maxKD+1,'***',FontSize=20)
maxKD_VR = Swarm(2.8,CarryTime_VR_P4_all(CarryTime_VR_P4_all>g)/50, 'DistributionStyle','Violin','KDBW',0.6,'CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(3.4,CarryTime_TV_P4_all(CarryTime_TV_P4_all>g)/50, 'DistributionStyle','Violin','KDBW',0.6,'CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(2.8:0.1:3.4,repmat(maxKD+0.75,7),'black','LineWidth',1.5); text(3.05,maxKD+1.1,'**', FontSize=20)
title('Transport')
ax = gca;ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];axis([0.5 4 0 12.5]); axis square
ax.XTick = [1 1.3 1.6 2.8 3.1 3.4];
set(gca(),'XTickLabel',{'VR',sprintf('\\newlineParticipant C1'), 'TV','VR',sprintf('\\newlineParticipant P4'),'TV'});
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
set(gcf, 'Color', 'w')

% Normalized Path Length - log scale - Figure 3C
figure; 
% reach
subplot(1,2,1)
hold on
maxKD_VR = Swarm(1, log(ReachEffic_VR_C1_all(ReachTime_VR_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(1.6,log(ReachEffic_TV_C1_all(ReachTime_TV_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(1:0.1:1.6,repmat(maxKD+0.4,7),'black','LineWidth',1.5); text(1.23,maxKD+0.6,'***',FontSize=20)
maxKD_VR = Swarm(2.8,log(ReachEffic_VR_P4_all(ReachTime_VR_P4_all>g)), 'DistributionStyle','Violin','KDBW',0.4,'CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(3.4,log(ReachEffic_TV_P4_all(ReachTime_TV_P4_all>g)), 'DistributionStyle','Violin','KDBW',0.4,'CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(2.8:0.1:3.4,repmat(maxKD+0.4,7),'black','LineWidth',1.5); text(3.05,maxKD+0.6,'***', FontSize=20)
title('Reach')
ax = gca;%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];
axis([0.5 4 log(1) 6]); axis square
ax.YTick = [log([1, 10, 100])]; ax.YTickLabel = [1 10 100];
ax.XTick = [1 1.3 1.6 2.8 3.1 3.4];
set(gca(),'XTickLabel',{'VR',sprintf('\\newlineParticipant C1'), 'TV','VR',sprintf('\\newlineParticipant P4'),'TV'});
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
ylabel('Normalized Path Length')
% transport
subplot(1,2,2)
hold on
maxKD_VR = Swarm(1, log(CarryEffic_VR_C1_all(CarryTime_VR_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(1.6,log(CarryEffic_TV_C1_all(CarryTime_TV_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(1:0.1:1.6,repmat(maxKD+0.4,7),'black','LineWidth',1.5); text(1.23,maxKD+0.6,'***',FontSize=20)
maxKD_VR = Swarm(2.8,log(CarryEffic_VR_P4_all(CarryTime_VR_P4_all>g)), 'DistributionStyle','Violin','KDBW',0.4,'CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(3.4,log(CarryEffic_TV_P4_all(CarryTime_TV_P4_all>g)), 'DistributionStyle','Violin','KDBW',0.4,'CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(2.8:0.1:3.4,repmat(maxKD+0.4,7),'black','LineWidth',1.5); text(3.05,maxKD+0.6,'***', FontSize=20)
title('Transport')
ax = gca;%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];
axis([0.5 4 log(1) 6]); axis square
ax.YTick = [log([1, 10, 100])]; ax.YTickLabel = [1 10 100];
ax.XTick = [1 1.3 1.6 2.8 3.1 3.4];
set(gca(),'XTickLabel',{'VR',sprintf('\\newlineParticipant C1'), 'TV','VR',sprintf('\\newlineParticipant P4'),'TV'});
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
set(gcf, 'Color', 'w')

%% Supplemental Figure 1

% path length by dimension - log scale
% Reach
figure; 
% reach X
subplot(1,3,1); hold on
maxKD_VR = Swarm(1, log(ReachLength_x_VR_C1_all(ReachTime_VR_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(1.6, log(ReachLength_x_TV_C1_all(ReachTime_TV_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(1:0.1:1.6,repmat(maxKD+0.1,7),'black','LineWidth',1.5); text(1.23,maxKD+0.3,'***',FontSize=20)
maxKD_VR = Swarm(2.8, log(ReachLength_x_VR_P4_all(ReachTime_VR_P4_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(3.4, log(ReachLength_x_TV_P4_all(ReachTime_TV_P4_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(2.8:0.1:3.4,repmat(maxKD+0.1,7),'black','LineWidth',1.5); text(3.05,maxKD+0.2,'***', FontSize=20)
title('X (front-back)')
ax = gca; ax.XTick = [1 1.3 1.6 2.8 3.1 3.4];
axis([0.5 4 log(0.01) log(60)]); axis square
ax.YTick = [log([0.01 0.1, 1, 10])]; ax.YTickLabel = [0.01 0.1 1 10];
set(gca(),'XTickLabel',{'VR',sprintf('\\newlineParticipant C1'), 'TV','VR',sprintf('\\newlineParticipant P4'),'TV'});
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
ylabel('Reach - Normalized Path Length')
% reach Y
subplot(1,3,2); hold on
maxKD_VR = Swarm(1, log(ReachLength_y_VR_C1_all(ReachTime_VR_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(1.6, log(ReachLength_y_TV_C1_all(ReachTime_TV_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(1:0.1:1.6,repmat(maxKD+0.1,7),'black','LineWidth',1.5); text(1.22,maxKD+0.2,'***',FontSize=20)
maxKD_VR = Swarm(2.8, log(ReachLength_y_VR_P4_all(ReachTime_VR_P4_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(3.4, log(ReachLength_y_TV_P4_all(ReachTime_TV_P4_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(2.8:0.1:3.4,repmat(maxKD+0.1,7),'black','LineWidth',1.5); text(3.07,maxKD+0.2,'***', FontSize=20)
title('Y (up-down)')
ax = gca; ax.XTick = [1 1.3 1.6 2.8 3.1 3.4];
axis([0.5 4 log(0.01) log(60)]); axis square
ax.YTick = [log([0.01 0.1, 1, 10])]; ax.YTickLabel = [0.01 0.1 1 10];
set(gca(),'XTickLabel',{'VR',sprintf('\\newlineParticipant C1'), 'TV','VR',sprintf('\\newlineParticipant P4'),'TV'});
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
% reach Z
subplot(1,3,3); hold on
maxKD_VR = Swarm(1, log(ReachLength_z_VR_C1_all(ReachTime_VR_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(1.6, log(ReachLength_z_TV_C1_all(ReachTime_TV_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(1:0.1:1.6,repmat(maxKD+0.1,7),'black','LineWidth',1.5); text(1.23,maxKD+0.2,'***',FontSize=20)
maxKD_VR = Swarm(2.8, log(ReachLength_z_VR_P4_all(ReachTime_VR_P4_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(3.4, log(ReachLength_z_TV_P4_all(ReachTime_TV_P4_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(2.8:0.1:3.4,repmat(maxKD+0.1,7),'black','LineWidth',1.5); text(3.05,maxKD+0.2,'**', FontSize=20)
title('Z (left-right)')
ax = gca; ax.XTick = [1 1.3 1.6 2.8 3.1 3.4];
axis([0.5 4 log(0.01) log(60)]); axis square
ax.YTick = [log([0.01 0.1, 1, 10])]; ax.YTickLabel = [0.01 0.1 1 10];
set(gca(),'XTickLabel',{'VR',sprintf('\\newlineParticipant C1'), 'TV','VR',sprintf('\\newlineParticipant P4'),'TV'});
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
set(gcf, 'Color', 'w')

% Carry
figure;
% carry X
subplot(1,3,1); hold on
maxKD_VR = Swarm(1, log(CarryLength_x_VR_C1_all(CarryTime_VR_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(1.6, log(CarryLength_x_TV_C1_all(CarryTime_TV_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(1:0.1:1.6,repmat(maxKD+0.1,7),'black','LineWidth',1.5); text(1.23,maxKD+0.2,'***',FontSize=20)
maxKD_VR = Swarm(2.8, log(CarryLength_x_VR_P4_all(CarryTime_VR_P4_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(3.4, log(CarryLength_x_TV_P4_all(CarryTime_TV_P4_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(2.8:0.1:3.4,repmat(maxKD+0.1,7),'black','LineWidth',1.5); text(3.05,maxKD+0.2,'*', FontSize=13)
title('X (front-back)')
ax = gca; ax.XTick = [1 1.3 1.6 2.8 3.1 3.4];
axis([0.5 4 log(0.01) log(60)]); axis square
ax.YTick = [log([0.01 0.1, 1, 10])]; ax.YTickLabel = [0.01 0.1 1 10];
set(gca(),'XTickLabel',{'VR',sprintf('\\newlineParticipant C1'), 'TV','VR',sprintf('\\newlineParticipant P4'),'TV'});
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
ylabel('Carry - Normalized Path Length')
% carry Y
subplot(1,3,2); hold on
maxKD_VR = Swarm(1, log(CarryLength_y_VR_C1_all(CarryTime_VR_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(1.6, log(CarryLength_y_TV_C1_all(CarryTime_TV_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(1:0.1:1.6,repmat(maxKD+0.1,7),'black','LineWidth',1.5); text(1.22,maxKD+0.2,'***',FontSize=20)
maxKD_VR = Swarm(2.8, log(CarryLength_y_VR_P4_all(CarryTime_VR_P4_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(3.4, log(CarryLength_y_TV_P4_all(CarryTime_TV_P4_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(2.8:0.1:3.4,repmat(maxKD+0.1,7),'black','LineWidth',1.5); text(3.05,maxKD+0.2,'*', FontSize=13)
title('Y (up-down)')
ax = gca; ax.XTick = [1 1.3 1.6 2.8 3.1 3.4];
axis([0.5 4 log(0.01) log(60)]); axis square
ax.YTick = [log([0.01 0.1, 1, 10])]; ax.YTickLabel = [0.01 0.1 1 10];
set(gca(),'XTickLabel',{'VR',sprintf('\\newlineParticipant C1'), 'TV','VR',sprintf('\\newlineParticipant P4'),'TV'});
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
% carry Z
subplot(1,3,3); hold on
maxKD_VR = Swarm(1, log(CarryLength_z_VR_C1_all(CarryTime_VR_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(1.6, log(CarryLength_z_TV_C1_all(CarryTime_TV_C1_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(1:0.1:1.6,repmat(maxKD+2.1,7),'black','LineWidth',1.5); text(1.23,maxKD+2.5,'***',FontSize=20)
maxKD_VR = Swarm(2.8, log(CarryLength_z_VR_P4_all(CarryTime_VR_P4_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
maxKD_TV = Swarm(3.4, log(CarryLength_z_TV_P4_all(CarryTime_TV_P4_all>g)), 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
maxKD = max(maxKD_TV,maxKD_VR); plot(2.8:0.1:3.4,repmat(maxKD+2,7),'black','LineWidth',1.5); text(3.05,maxKD+3,'**', FontSize=20)
title(' Z (left-right)')
ax = gca; ax.XTick = [1 1.3 1.6 2.8 3.1 3.4];
axis([0.5 4 log(0.01) log(60)]); axis square
ax.YTick = [log([0.01 0.1, 1, 10])]; ax.YTickLabel = [0.01 0.1 1 10];
set(gca(),'XTickLabel',{'VR',sprintf('\\newlineParticipant C1'), 'TV','VR',sprintf('\\newlineParticipant P4'),'TV'});
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
ylabel('Normalized Path Length')
set(gcf, 'Color', 'w')