%% load the data
addpath(genpath("C:\Users\ari798\Documents\GitHub")) % laptop
session_path = 'T:\SessionData\BCI02\MotorExperiments\BCI02.data.00435'; %sess 435, 04/19
all_set_files = dir(fullfile(session_path, '*.Set*.bin'));
pat = ".Set" + digitsPattern(4) + ".";
exp_sets_envTV_decTV = [18,20,22,24];
exp_sets_envTV_decVR = [19,21,23,25];
exp_sets_envVR_decVR = [27,29,31,22];
exp_sets_envVR_decTV = [28,30,32,34];
% load in TV environment with TV decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envTV_decTV)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envTV_decTV1{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eTV_dTV1 = prepData('files',filepath_envTV_decTV1);
% load in TV environment with VR decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envTV_decVR)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envTV_decVR1{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eTV_dVR1 = prepData('files',filepath_envTV_decVR1);
% load in VR environment with VR decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envVR_decVR)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envVR_decVR1{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eVR_dVR1 = prepData('files',filepath_envVR_decVR1);
% load in VR environment with TV decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envVR_decTV)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envVR_decTV1{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eVR_dTV1 = prepData('files',filepath_envVR_decTV1);
disp('dataset 1 - done')

session_path = 'T:\SessionData\BCI02\MotorExperiments\BCI02.data.00442'; %sess 442, 04/24
all_set_files = dir(fullfile(session_path, '*.Set*.bin'));
pat = ".Set" + digitsPattern(4) + ".";
exp_sets_envTV_decTV = [19,21,23];
exp_sets_envTV_decVR = [20,22,24];
exp_sets_envVR_decVR = [13,15,17];
exp_sets_envVR_decTV = [14,16,18];
% load in TV environment with TV decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envTV_decTV)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envTV_decTV2{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eTV_dTV2 = prepData('files',filepath_envTV_decTV2);
% load in TV environment with VR decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envTV_decVR)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envTV_decVR2{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eTV_dVR2 = prepData('files',filepath_envTV_decVR2);
% load in VR environment with VR decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envVR_decVR)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envVR_decVR2{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eVR_dVR2 = prepData('files',filepath_envVR_decVR2);
% load in VR environment with TV decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envVR_decTV)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envVR_decTV2{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eVR_dTV2 = prepData('files',filepath_envVR_decTV2);
disp('dataset 2 - done')

%
session_path = 'T:\SessionData\BCI02\MotorExperiments\BCI02.data.00456'; %sess 456, 05/16
all_set_files = dir(fullfile(session_path, '*.Set*.bin'));
pat = ".Set" + digitsPattern(4) + ".";
exp_sets_envTV_decTV = [18,20,22];
exp_sets_envTV_decVR = [19,21,23];
exp_sets_envVR_decVR = [24,26,28];
exp_sets_envVR_decTV = [25,27,29];
% load in TV environment with TV decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envTV_decTV)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envTV_decTV3{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eTV_dTV3 = prepData('files',filepath_envTV_decTV3);
% load in TV environment with VR decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envTV_decVR)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envTV_decVR3{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eTV_dVR3 = prepData('files',filepath_envTV_decVR3);
% load in VR environment with VR decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envVR_decVR)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envVR_decVR3{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eVR_dVR3 = prepData('files',filepath_envVR_decVR3);
% load in VR environment with TV decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envVR_decTV)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envVR_decTV3{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eVR_dTV3 = prepData('files',filepath_envVR_decTV3);
disp('dataset 3 - done')

session_path = 'T:\SessionData\BCI02\MotorExperiments\BCI02.data.00476'; %sess 476, 07/13
all_set_files = dir(fullfile(session_path, '*.Set*.bin'));
pat = ".Set" + digitsPattern(4) + ".";
exp_sets_envTV_decTV = [31,33,35];
exp_sets_envTV_decVR = [32,34,36];
exp_sets_envVR_decVR = [24,26,29];
exp_sets_envVR_decTV = [25,27,30];
% load in TV environment with TV decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envTV_decTV)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envTV_decTV4{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eTV_dTV4 = prepData('files',filepath_envTV_decTV4);
% load in TV environment with VR decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envTV_decVR)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envTV_decVR4{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eTV_dVR4 = prepData('files',filepath_envTV_decVR4);
% load in VR environment with VR decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envVR_decVR)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envVR_decVR4{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eVR_dVR4 = prepData('files',filepath_envVR_decVR4);
% load in VR environment with TV decoder
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_envVR_decTV)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_envVR_decTV4{fIdx,1} = fullfile(session_path, fName.name);
end
Data_eVR_dTV4 = prepData('files',filepath_envVR_decTV4);
disp('dataset 4 - done')
%%
Data_eTV_dTV = [Data_eTV_dTV1 Data_eTV_dTV2 Data_eTV_dTV3 Data_eTV_dTV4];
Data_eTV_dVR = [Data_eTV_dVR1 Data_eTV_dVR2 Data_eTV_dVR3 Data_eTV_dVR4];
Data_eVR_dVR = [Data_eVR_dVR1 Data_eVR_dVR2 Data_eVR_dVR3 Data_eVR_dVR4];
Data_eVR_dTV = [Data_eVR_dTV1 Data_eVR_dTV2 Data_eVR_dTV3 Data_eVR_dTV4];
%% load parameters
%set(0,'DefaultFigureWindowStyle','docked')
subject = Data_eVR_dTV1.XM.subject_name{1};
session = num2str(Data_eVR_dTV1.XM.session_num{1});
task = '4D G&C';
date = 'multi';
saveFigs = 0;
g = 10;

%% run kinematic analysis
% loop over all datasets
for i = 1:4
    [successfulTrials_eTV_dTV{i}, numTrials_eTV_dTV{i}, ReachTime_eTV_dTV{i}, GraspTime_eTV_dTV{i}, CarryTime_eTV_dTV{i}, ReleaseTime_eTV_dTV{i}, ...
        ReachLength_x_eTV_dTV{i}, ReachLength_y_eTV_dTV{i}, ReachLength_z_eTV_dTV{i}, ReachLength_xyz_eTV_dTV{i}, ReachEffic_eTV_dTV{i}, ...
        CarryLength_x_eTV_dTV{i}, CarryLength_y_eTV_dTV{i}, CarryLength_z_eTV_dTV{i}, CarryLength_xyz_eTV_dTV{i}, CarryEffic_eTV_dTV{i}] = kinematic_analysis(Data_eTV_dTV(i), 'G');
    
    [successfulTrials_eTV_dVR{i}, numTrials_eTV_dVR{i}, ReachTime_eTV_dVR{i}, GraspTime_eTV_dVR{i}, CarryTime_eTV_dVR{i}, ReleaseTime_eTV_dVR{i}, ...
        ReachLength_x_eTV_dVR{i}, ReachLength_y_eTV_dVR{i}, ReachLength_z_eTV_dVR{i}, ReachLength_xyz_eTV_dVR{i}, ReachEffic_eTV_dVR{i}, ...
        CarryLength_x_eTV_dVR{i}, CarryLength_y_eTV_dVR{i}, CarryLength_z_eTV_dVR{i}, CarryLength_xyz_eTV_dVR{i}, CarryEffic_eTV_dVR{i}] = kinematic_analysis(Data_eTV_dVR(i), 'G');
    
    [successfulTrials_eVR_dVR{i}, numTrials_eVR_dVR{i}, ReachTime_eVR_dVR{i}, GraspTime_eVR_dVR{i}, CarryTime_eVR_dVR{i}, ReleaseTime_eVR_dVR{i}, ...
        ReachLength_x_eVR_dVR{i}, ReachLength_y_eVR_dVR{i}, ReachLength_z_eVR_dVR{i}, ReachLength_xyz_eVR_dVR{i}, ReachEffic_eVR_dVR{i}, ...
        CarryLength_x_eVR_dVR{i}, CarryLength_y_eVR_dVR{i}, CarryLength_z_eVR_dVR{i}, CarryLength_xyz_eVR_dVR{i}, CarryEffic_eVR_dVR{i}] = kinematic_analysis(Data_eVR_dVR(i), 'G');
    
    [successfulTrials_eVR_dTV{i}, numTrials_eVR_dTV{i}, ReachTime_eVR_dTV{i}, GraspTime_eVR_dTV{i}, CarryTime_eVR_dTV{i}, ReleaseTime_eVR_dTV{i}, ...
        ReachLength_x_eVR_dTV{i}, ReachLength_y_eVR_dTV{i}, ReachLength_z_eVR_dTV{i}, ReachLength_xyz_eVR_dTV{i}, ReachEffic_eVR_dTV{i}, ...
        CarryLength_x_eVR_dTV{i}, CarryLength_y_eVR_dTV{i}, CarryLength_z_eVR_dTV{i}, CarryLength_xyz_eVR_dTV{i}, CarryEffic_eVR_dTV{i}] = kinematic_analysis(Data_eVR_dTV(i), 'G');
end

% concatenate all datasets
successfulTrials_eTV_dTV_all = [successfulTrials_eTV_dTV{1} successfulTrials_eTV_dTV{2} successfulTrials_eTV_dTV{3} successfulTrials_eTV_dTV{4}]'; numTrials_eTV_dTV_all = [numTrials_eTV_dTV{1} numTrials_eTV_dTV{2} numTrials_eTV_dTV{3} numTrials_eTV_dTV{4}]';
ReachTime_eTV_dTV_all = [ReachTime_eTV_dTV{1}; ReachTime_eTV_dTV{2}; ReachTime_eTV_dTV{3}; ReachTime_eTV_dTV{4}]; CarryTime_eTV_dTV_all = [CarryTime_eTV_dTV{1}; CarryTime_eTV_dTV{2}; CarryTime_eTV_dTV{3}; CarryTime_eTV_dTV{4}];
ReachLength_x_eTV_dTV_all = [ReachLength_x_eTV_dTV{1}; ReachLength_x_eTV_dTV{2}; ReachLength_x_eTV_dTV{3}; ReachLength_x_eTV_dTV{4}]; ReachLength_y_eTV_dTV_all = [ReachLength_y_eTV_dTV{1}; ReachLength_y_eTV_dTV{2}; ReachLength_y_eTV_dTV{3}; ReachLength_y_eTV_dTV{4}];
ReachLength_z_eTV_dTV_all = [ReachLength_z_eTV_dTV{1}; ReachLength_z_eTV_dTV{2}; ReachLength_z_eTV_dTV{3}; ReachLength_z_eTV_dTV{4}]; ReachLength_xyz_eTV_dTV_all = [ReachLength_xyz_eTV_dTV{1}; ReachLength_xyz_eTV_dTV{2}; ReachLength_xyz_eTV_dTV{3}; ReachLength_xyz_eTV_dTV{4}];
CarryLength_x_eTV_dTV_all = [CarryLength_x_eTV_dTV{1}; CarryLength_x_eTV_dTV{2}; CarryLength_x_eTV_dTV{3}; CarryLength_x_eTV_dTV{4}]; CarryLength_y_eTV_dTV_all = [CarryLength_y_eTV_dTV{1}; CarryLength_y_eTV_dTV{2}; CarryLength_y_eTV_dTV{3}; CarryLength_y_eTV_dTV{4}];
CarryLength_z_eTV_dTV_all = [CarryLength_z_eTV_dTV{1}; CarryLength_z_eTV_dTV{2}; CarryLength_z_eTV_dTV{3}; CarryLength_z_eTV_dTV{4}]; CarryLength_xyz_eTV_dTV_all = [CarryLength_xyz_eTV_dTV{1}; CarryLength_xyz_eTV_dTV{2}; CarryLength_xyz_eTV_dTV{3}; CarryLength_xyz_eTV_dTV{4}];
ReachEffic_eTV_dTV_all = [ReachEffic_eTV_dTV{1}; ReachEffic_eTV_dTV{2}; ReachEffic_eTV_dTV{3}; ReachEffic_eTV_dTV{4}]; CarryEffic_eTV_dTV_all = [CarryEffic_eTV_dTV{1}; CarryEffic_eTV_dTV{2}; CarryEffic_eTV_dTV{3}; CarryEffic_eTV_dTV{4}];

successfulTrials_eTV_dVR_all = [successfulTrials_eTV_dVR{1} successfulTrials_eTV_dVR{2} successfulTrials_eTV_dVR{3} successfulTrials_eTV_dVR{4}]'; numTrials_eTV_dVR_all = [numTrials_eTV_dVR{1} numTrials_eTV_dVR{2} numTrials_eTV_dVR{3} numTrials_eTV_dVR{4}]';
ReachTime_eTV_dVR_all = [ReachTime_eTV_dVR{1}; ReachTime_eTV_dVR{2}; ReachTime_eTV_dVR{3}; ReachTime_eTV_dVR{4}]; CarryTime_eTV_dVR_all = [CarryTime_eTV_dVR{1}; CarryTime_eTV_dVR{2}; CarryTime_eTV_dVR{3}; CarryTime_eTV_dVR{4}];
ReachLength_x_eTV_dVR_all = [ReachLength_x_eTV_dVR{1}; ReachLength_x_eTV_dVR{2}; ReachLength_x_eTV_dVR{3}; ReachLength_x_eTV_dVR{4}]; ReachLength_y_eTV_dVR_all = [ReachLength_y_eTV_dVR{1}; ReachLength_y_eTV_dVR{2}; ReachLength_y_eTV_dVR{3}; ReachLength_y_eTV_dVR{4}];
ReachLength_z_eTV_dVR_all = [ReachLength_z_eTV_dVR{1}; ReachLength_z_eTV_dVR{2}; ReachLength_z_eTV_dVR{3}; ReachLength_z_eTV_dVR{4}]; ReachLength_xyz_eTV_dVR_all = [ReachLength_xyz_eTV_dVR{1}; ReachLength_xyz_eTV_dVR{2}; ReachLength_xyz_eTV_dVR{3}; ReachLength_xyz_eTV_dVR{4}];
CarryLength_x_eTV_dVR_all = [CarryLength_x_eTV_dVR{1}; CarryLength_x_eTV_dVR{2}; CarryLength_x_eTV_dVR{3}; CarryLength_x_eTV_dVR{4}]; CarryLength_y_eTV_dVR_all = [CarryLength_y_eTV_dVR{1}; CarryLength_y_eTV_dVR{2}; CarryLength_y_eTV_dVR{3}; CarryLength_y_eTV_dVR{4}];
CarryLength_z_eTV_dVR_all = [CarryLength_z_eTV_dVR{1}; CarryLength_z_eTV_dVR{2}; CarryLength_z_eTV_dVR{3}; CarryLength_z_eTV_dVR{4}]; CarryLength_xyz_eTV_dVR_all = [CarryLength_xyz_eTV_dVR{1}; CarryLength_xyz_eTV_dVR{2}; CarryLength_xyz_eTV_dVR{3}; CarryLength_xyz_eTV_dVR{4}];
ReachEffic_eTV_dVR_all = [ReachEffic_eTV_dVR{1}; ReachEffic_eTV_dVR{2}; ReachEffic_eTV_dVR{3}; ReachEffic_eTV_dVR{4}]; CarryEffic_eTV_dVR_all = [CarryEffic_eTV_dVR{1}; CarryEffic_eTV_dVR{2}; CarryEffic_eTV_dVR{3}; CarryEffic_eTV_dVR{4}];

successfulTrials_eVR_dVR_all = [successfulTrials_eVR_dVR{1} successfulTrials_eVR_dVR{2} successfulTrials_eVR_dVR{3} successfulTrials_eVR_dVR{4}]'; numTrials_eVR_dVR_all = [numTrials_eVR_dVR{1} numTrials_eVR_dVR{2} numTrials_eVR_dVR{3} numTrials_eVR_dVR{4}]';
ReachTime_eVR_dVR_all = [ReachTime_eVR_dVR{1}; ReachTime_eVR_dVR{2}; ReachTime_eVR_dVR{3}; ReachTime_eVR_dVR{4}]; CarryTime_eVR_dVR_all = [CarryTime_eVR_dVR{1}; CarryTime_eVR_dVR{2}; CarryTime_eVR_dVR{3}; CarryTime_eVR_dVR{4}];
ReachLength_x_eVR_dVR_all = [ReachLength_x_eVR_dVR{1}; ReachLength_x_eVR_dVR{2}; ReachLength_x_eVR_dVR{3}; ReachLength_x_eVR_dVR{4}]; ReachLength_y_eVR_dVR_all = [ReachLength_y_eVR_dVR{1}; ReachLength_y_eVR_dVR{2}; ReachLength_y_eVR_dVR{3}; ReachLength_y_eVR_dVR{4}];
ReachLength_z_eVR_dVR_all = [ReachLength_z_eVR_dVR{1}; ReachLength_z_eVR_dVR{2}; ReachLength_z_eVR_dVR{3}; ReachLength_z_eVR_dVR{4}]; ReachLength_xyz_eVR_dVR_all = [ReachLength_xyz_eVR_dVR{1}; ReachLength_xyz_eVR_dVR{2}; ReachLength_xyz_eVR_dVR{3}; ReachLength_xyz_eVR_dVR{4}];
CarryLength_x_eVR_dVR_all = [CarryLength_x_eVR_dVR{1}; CarryLength_x_eVR_dVR{2}; CarryLength_x_eVR_dVR{3}; CarryLength_x_eVR_dVR{4}]; CarryLength_y_eVR_dVR_all = [CarryLength_y_eVR_dVR{1}; CarryLength_y_eVR_dVR{2}; CarryLength_y_eVR_dVR{3}; CarryLength_y_eVR_dVR{4}];
CarryLength_z_eVR_dVR_all = [CarryLength_z_eVR_dVR{1}; CarryLength_z_eVR_dVR{2}; CarryLength_z_eVR_dVR{3}; CarryLength_z_eVR_dVR{4}]; CarryLength_xyz_eVR_dVR_all = [CarryLength_xyz_eVR_dVR{1}; CarryLength_xyz_eVR_dVR{2}; CarryLength_xyz_eVR_dVR{3}; CarryLength_xyz_eVR_dVR{4}];
ReachEffic_eVR_dVR_all = [ReachEffic_eVR_dVR{1}; ReachEffic_eVR_dVR{2}; ReachEffic_eVR_dVR{3}; ReachEffic_eVR_dVR{4}]; CarryEffic_eVR_dVR_all = [CarryEffic_eVR_dVR{1}; CarryEffic_eVR_dVR{2}; CarryEffic_eVR_dVR{3}; CarryEffic_eVR_dVR{4}];

successfulTrials_eVR_dTV_all = [successfulTrials_eVR_dTV{1} successfulTrials_eVR_dTV{2} successfulTrials_eVR_dTV{3} successfulTrials_eVR_dTV{4}]'; numTrials_eVR_dTV_all = [numTrials_eVR_dTV{1} numTrials_eVR_dTV{2} numTrials_eVR_dTV{3} numTrials_eVR_dTV{4}]';
ReachTime_eVR_dTV_all = [ReachTime_eVR_dTV{1}; ReachTime_eVR_dTV{2}; ReachTime_eVR_dTV{3}; ReachTime_eVR_dTV{4}]; CarryTime_eVR_dTV_all = [CarryTime_eVR_dTV{1}; CarryTime_eVR_dTV{2}; CarryTime_eVR_dTV{3}; CarryTime_eVR_dTV{4}];
ReachLength_x_eVR_dTV_all = [ReachLength_x_eVR_dTV{1}; ReachLength_x_eVR_dTV{2}; ReachLength_x_eVR_dTV{3}; ReachLength_x_eVR_dTV{4}]; ReachLength_y_eVR_dTV_all = [ReachLength_y_eVR_dTV{1}; ReachLength_y_eVR_dTV{2}; ReachLength_y_eVR_dTV{3}; ReachLength_y_eVR_dTV{4}];
ReachLength_z_eVR_dTV_all = [ReachLength_z_eVR_dTV{1}; ReachLength_z_eVR_dTV{2}; ReachLength_z_eVR_dTV{3}; ReachLength_z_eVR_dTV{4}]; ReachLength_xyz_eVR_dTV_all = [ReachLength_xyz_eVR_dTV{1}; ReachLength_xyz_eVR_dTV{2}; ReachLength_xyz_eVR_dTV{3}; ReachLength_xyz_eVR_dTV{4}];
CarryLength_x_eVR_dTV_all = [CarryLength_x_eVR_dTV{1}; CarryLength_x_eVR_dTV{2}; CarryLength_x_eVR_dTV{3}; CarryLength_x_eVR_dTV{4}]; CarryLength_y_eVR_dTV_all = [CarryLength_y_eVR_dTV{1}; CarryLength_y_eVR_dTV{2}; CarryLength_y_eVR_dTV{3}; CarryLength_y_eVR_dTV{4}];
CarryLength_z_eVR_dTV_all = [CarryLength_z_eVR_dTV{1}; CarryLength_z_eVR_dTV{2}; CarryLength_z_eVR_dTV{3}; CarryLength_z_eVR_dTV{4}]; CarryLength_xyz_eVR_dTV_all = [CarryLength_xyz_eVR_dTV{1}; CarryLength_xyz_eVR_dTV{2}; CarryLength_xyz_eVR_dTV{3}; CarryLength_xyz_eVR_dTV{4}];
ReachEffic_eVR_dTV_all = [ReachEffic_eVR_dTV{1}; ReachEffic_eVR_dTV{2}; ReachEffic_eVR_dTV{3}; ReachEffic_eVR_dTV{4}]; CarryEffic_eVR_dTV_all = [CarryEffic_eVR_dTV{1}; CarryEffic_eVR_dTV{2}; CarryEffic_eVR_dTV{3}; CarryEffic_eVR_dTV{4}];
%% calculate statistics
%g = 10;
% kruskal wallis test - test for significance in group
p.kw_RT = kruskalwallis([ReachTime_eVR_dVR_all(ReachTime_eVR_dVR_all>g);ReachTime_eVR_dTV_all(ReachTime_eVR_dTV_all>g);ReachTime_eTV_dVR_all(ReachTime_eTV_dVR_all>g);ReachTime_eTV_dTV_all(ReachTime_eTV_dTV_all>g)],...
    [ones(sum(ReachTime_eVR_dVR_all>g),1);ones(sum(ReachTime_eVR_dTV_all>g),1)*2;ones(sum(ReachTime_eTV_dVR_all>g),1)*3;ones(sum(ReachTime_eTV_dTV_all>g),1)*4]);

p.kw_CT = kruskalwallis([CarryTime_eVR_dVR_all(CarryTime_eVR_dVR_all>g);CarryTime_eVR_dTV_all(CarryTime_eVR_dTV_all>g);CarryTime_eTV_dVR_all(CarryTime_eTV_dVR_all>g);CarryTime_eTV_dTV_all(CarryTime_eTV_dTV_all>g)],...
    [ones(sum(CarryTime_eVR_dVR_all>g),1);ones(sum(CarryTime_eVR_dTV_all>g),1)*2;ones(sum(CarryTime_eTV_dVR_all>g),1)*3;ones(sum(CarryTime_eTV_dTV_all>g),1)*4]);

p.kw_RE = kruskalwallis([ReachEffic_eVR_dVR_all(ReachTime_eVR_dVR_all>g);ReachEffic_eVR_dTV_all(ReachTime_eVR_dTV_all>g);ReachEffic_eTV_dVR_all(ReachTime_eTV_dVR_all>g);ReachEffic_eTV_dTV_all(ReachTime_eTV_dTV_all>g)],...
    [ones(sum(ReachTime_eVR_dVR_all>g),1);ones(sum(ReachTime_eVR_dTV_all>g),1)*2;ones(sum(ReachTime_eTV_dVR_all>g),1)*3;ones(sum(ReachTime_eTV_dTV_all>g),1)*4]);

p.kw_CE = kruskalwallis([CarryEffic_eVR_dVR_all(CarryTime_eVR_dVR_all>g);CarryEffic_eVR_dTV_all(CarryTime_eVR_dTV_all>g);CarryEffic_eTV_dVR_all(CarryTime_eTV_dVR_all>g);CarryEffic_eTV_dTV_all(CarryTime_eTV_dTV_all>g)],...
    [ones(sum(CarryTime_eVR_dVR_all>g),1);ones(sum(CarryTime_eVR_dTV_all>g),1)*2;ones(sum(CarryTime_eTV_dVR_all>g),1)*3;ones(sum(CarryTime_eTV_dTV_all>g),1)*4]);

p.kw_RP = kruskalwallis([ReachLength_xyz_eVR_dVR_all(ReachTime_eVR_dVR_all>g);ReachLength_xyz_eVR_dTV_all(ReachTime_eVR_dTV_all>g);ReachLength_xyz_eTV_dVR_all(ReachTime_eTV_dVR_all>g);ReachLength_xyz_eTV_dTV_all(ReachTime_eTV_dTV_all>g)],...
    [ones(sum(ReachTime_eVR_dVR_all>g),1);ones(sum(ReachTime_eVR_dTV_all>g),1)*2;ones(sum(ReachTime_eTV_dVR_all>g),1)*3;ones(sum(ReachTime_eTV_dTV_all>g),1)*4]);

p.kw_CP = kruskalwallis([CarryLength_xyz_eVR_dVR_all(CarryTime_eVR_dVR_all>g);CarryLength_xyz_eVR_dTV_all(CarryTime_eVR_dTV_all>g);CarryLength_xyz_eTV_dVR_all(CarryTime_eTV_dVR_all>g);CarryLength_xyz_eTV_dTV_all(CarryTime_eTV_dTV_all>g)],...
    [ones(sum(CarryTime_eVR_dVR_all>g),1);ones(sum(CarryTime_eVR_dTV_all>g),1)*2;ones(sum(CarryTime_eTV_dVR_all>g),1)*3;ones(sum(CarryTime_eTV_dTV_all>g),1)*4]);

p.kw_RP_x = kruskalwallis([ReachLength_x_eVR_dVR_all(ReachTime_eVR_dVR_all>g);ReachLength_x_eVR_dTV_all(ReachTime_eVR_dTV_all>g);ReachLength_x_eTV_dVR_all(ReachTime_eTV_dVR_all>g);ReachLength_x_eTV_dTV_all(ReachTime_eTV_dTV_all>g)],...
    [ones(sum(ReachTime_eVR_dVR_all>g),1);ones(sum(ReachTime_eVR_dTV_all>g),1)*2;ones(sum(ReachTime_eTV_dVR_all>g),1)*3;ones(sum(ReachTime_eTV_dTV_all>g),1)*4]);

p.kw_RP_y = kruskalwallis([ReachLength_y_eVR_dVR_all(ReachTime_eVR_dVR_all>g);ReachLength_y_eVR_dTV_all(ReachTime_eVR_dTV_all>g);ReachLength_y_eTV_dVR_all(ReachTime_eTV_dVR_all>g);ReachLength_y_eTV_dTV_all(ReachTime_eTV_dTV_all>g)],...
    [ones(sum(ReachTime_eVR_dVR_all>g),1);ones(sum(ReachTime_eVR_dTV_all>g),1)*2;ones(sum(ReachTime_eTV_dVR_all>g),1)*3;ones(sum(ReachTime_eTV_dTV_all>g),1)*4]);

p.kw_RP_z = kruskalwallis([ReachLength_z_eVR_dVR_all(ReachTime_eVR_dVR_all>g);ReachLength_z_eVR_dTV_all(ReachTime_eVR_dTV_all>g);ReachLength_z_eTV_dVR_all(ReachTime_eTV_dVR_all>g);ReachLength_z_eTV_dTV_all(ReachTime_eTV_dTV_all>g)],...
    [ones(sum(ReachTime_eVR_dVR_all>g),1);ones(sum(ReachTime_eVR_dTV_all>g),1)*2;ones(sum(ReachTime_eTV_dVR_all>g),1)*3;ones(sum(ReachTime_eTV_dTV_all>g),1)*4]);

p.kw_CP_x = kruskalwallis([CarryLength_x_eVR_dVR_all(CarryTime_eVR_dVR_all>g);CarryLength_x_eVR_dTV_all(CarryTime_eVR_dTV_all>g);CarryLength_x_eTV_dVR_all(CarryTime_eTV_dVR_all>g);CarryLength_x_eTV_dTV_all(CarryTime_eTV_dTV_all>g)],...
    [ones(sum(CarryTime_eVR_dVR_all>g),1);ones(sum(CarryTime_eVR_dTV_all>g),1)*2;ones(sum(CarryTime_eTV_dVR_all>g),1)*3;ones(sum(CarryTime_eTV_dTV_all>g),1)*4]);

p.kw_CP_y = kruskalwallis([CarryLength_y_eVR_dVR_all(CarryTime_eVR_dVR_all>g);CarryLength_y_eVR_dTV_all(CarryTime_eVR_dTV_all>g);CarryLength_y_eTV_dVR_all(CarryTime_eTV_dVR_all>g);CarryLength_y_eTV_dTV_all(CarryTime_eTV_dTV_all>g)],...
    [ones(sum(CarryTime_eVR_dVR_all>g),1);ones(sum(CarryTime_eVR_dTV_all>g),1)*2;ones(sum(CarryTime_eTV_dVR_all>g),1)*3;ones(sum(CarryTime_eTV_dTV_all>g),1)*4]);

p.kw_CP_z = kruskalwallis([CarryLength_z_eVR_dVR_all(CarryTime_eVR_dVR_all>g);CarryLength_z_eVR_dTV_all(CarryTime_eVR_dTV_all>g);CarryLength_z_eTV_dVR_all(CarryTime_eTV_dVR_all>g);CarryLength_z_eTV_dTV_all(CarryTime_eTV_dTV_all>g)],...
    [ones(sum(CarryTime_eVR_dVR_all>g),1);ones(sum(CarryTime_eVR_dTV_all>g),1)*2;ones(sum(CarryTime_eTV_dVR_all>g),1)*3;ones(sum(CarryTime_eTV_dTV_all>g),1)*4]);

% rank sum - test for significance across samples within group
% reach time
p.rs_RT.eVRdVR_eVRdTV = ranksum(ReachTime_eVR_dVR_all(ReachTime_eVR_dVR_all>g), ReachTime_eVR_dTV_all(ReachTime_eVR_dTV_all>g));
p.rs_RT.eTVdVR_eTVdTV = ranksum(ReachTime_eTV_dVR_all(ReachTime_eTV_dVR_all>g), ReachTime_eTV_dTV_all(ReachTime_eTV_dTV_all>g));
p.rs_RT.eVRdVR_eTVdVR = ranksum(ReachTime_eVR_dVR_all(ReachTime_eVR_dVR_all>g), ReachTime_eTV_dVR_all(ReachTime_eTV_dVR_all>g));
p.rs_RT.eVRdVR_eTVdTV = ranksum(ReachTime_eVR_dVR_all(ReachTime_eVR_dVR_all>g), ReachTime_eTV_dTV_all(ReachTime_eTV_dTV_all>g));
p.rs_RT.eVRdTV_eTVdTV = ranksum(ReachTime_eVR_dTV_all(ReachTime_eVR_dTV_all>g), ReachTime_eTV_dTV_all(ReachTime_eTV_dTV_all>g));
p.rs_RT.eVRdTV_eTVdVR = ranksum(ReachTime_eVR_dTV_all(ReachTime_eVR_dTV_all>g), ReachTime_eTV_dVR_all(ReachTime_eTV_dVR_all>g));
% reach efficiency
p.rs_RE.eVRdVR_eVRdTV = ranksum(ReachEffic_eVR_dVR_all(ReachTime_eVR_dVR_all>g), ReachEffic_eVR_dTV_all(ReachTime_eVR_dTV_all>g));
p.rs_RE.eTVdVR_eTVdTV = ranksum(ReachEffic_eTV_dVR_all(ReachTime_eTV_dVR_all>g), ReachEffic_eTV_dTV_all(ReachTime_eTV_dTV_all>g));
p.rs_RE.eVRdVR_eTVdVR = ranksum(ReachEffic_eVR_dVR_all(ReachTime_eVR_dVR_all>g), ReachEffic_eTV_dVR_all(ReachTime_eTV_dVR_all>g));
p.rs_RE.eVRdVR_eTVdTV = ranksum(ReachEffic_eVR_dVR_all(ReachTime_eVR_dVR_all>g), ReachEffic_eTV_dTV_all(ReachTime_eTV_dTV_all>g));
p.rs_RE.eVRdTV_eTVdTV = ranksum(ReachEffic_eVR_dTV_all(ReachTime_eVR_dTV_all>g), ReachEffic_eTV_dTV_all(ReachTime_eTV_dTV_all>g));
p.rs_RE.eVRdTV_eTVdVR = ranksum(ReachEffic_eVR_dTV_all(ReachTime_eVR_dTV_all>g), ReachEffic_eTV_dVR_all(ReachTime_eTV_dVR_all>g));

% carry time
p.rs_CT.eVRdVR_eVRdTV = ranksum(CarryTime_eVR_dVR_all(CarryTime_eVR_dVR_all>g), CarryTime_eVR_dTV_all(CarryTime_eVR_dTV_all>g));
p.rs_CT.eTVdVR_eTVdTV = ranksum(CarryTime_eTV_dVR_all(CarryTime_eTV_dVR_all>g), CarryTime_eTV_dTV_all(CarryTime_eTV_dTV_all>g));
p.rs_CT.eVRdVR_eTVdVR = ranksum(CarryTime_eVR_dVR_all(CarryTime_eVR_dVR_all>g), CarryTime_eTV_dVR_all(CarryTime_eTV_dVR_all>g));
p.rs_CT.eVRdVR_eTVdTV = ranksum(CarryTime_eVR_dVR_all(CarryTime_eVR_dVR_all>g), CarryTime_eTV_dTV_all(CarryTime_eTV_dTV_all>g));
p.rs_CT.eVRdTV_eTVdTV = ranksum(CarryTime_eVR_dTV_all(CarryTime_eVR_dTV_all>g), CarryTime_eTV_dTV_all(CarryTime_eTV_dTV_all>g));
p.rs_CT.eVRdTV_eTVdVR = ranksum(CarryTime_eVR_dTV_all(CarryTime_eVR_dTV_all>g), CarryTime_eTV_dVR_all(CarryTime_eTV_dVR_all>g));
% carry efficiency
p.rs_CE.eVRdVR_eVRdTV = ranksum(CarryEffic_eVR_dVR_all(CarryTime_eVR_dVR_all>g), CarryEffic_eVR_dTV_all(CarryTime_eVR_dTV_all>g));
p.rs_CE.eTVdVR_eTVdTV = ranksum(CarryEffic_eTV_dVR_all(CarryTime_eTV_dVR_all>g), CarryEffic_eTV_dTV_all(CarryTime_eTV_dTV_all>g));
p.rs_CE.eVRdVR_eTVdVR = ranksum(CarryEffic_eVR_dVR_all(CarryTime_eVR_dVR_all>g), CarryEffic_eTV_dVR_all(CarryTime_eTV_dVR_all>g));
p.rs_CE.eVRdVR_eTVdTV = ranksum(CarryEffic_eVR_dVR_all(CarryTime_eVR_dVR_all>g), CarryEffic_eTV_dTV_all(CarryTime_eTV_dTV_all>g));
p.rs_CE.eVRdTV_eTVdTV = ranksum(CarryEffic_eVR_dTV_all(CarryTime_eVR_dTV_all>g), CarryEffic_eTV_dTV_all(CarryTime_eTV_dTV_all>g));
p.rs_CE.eVRdTV_eTVdVR = ranksum(CarryEffic_eVR_dTV_all(CarryTime_eVR_dTV_all>g), CarryEffic_eTV_dVR_all(CarryTime_eTV_dVR_all>g));

% reach efficiency (must run plotting first to calculate outliers - or move that part of code)
% p.rs_RE.eVRdVR_eVRdTV = ranksum(ReachEffic_eVR_dVR_noOutliers(ReachTime_eVR_dVR_all>g), ReachEffic_eVR_dTV_noOutliers(ReachTime_eVR_dTV_all>g));
% p.rs_RE.eTVdVR_eTVdTV = ranksum(ReachEffic_eTV_dVR_noOutliers(ReachTime_eTV_dVR_all>g), ReachEffic_eTV_dTV_all(ReachTime_eTV_dTV_all>g));
% p.rs_RE.eVRdVR_eTVdVR = ranksum(ReachEffic_eVR_dVR_noOutliers(ReachTime_eVR_dVR_all>g), ReachEffic_eTV_dVR_noOutliers(ReachTime_eTV_dVR_all>g));
% p.rs_RE.eVRdVR_eTVdTV = ranksum(ReachEffic_eVR_dVR_noOutliers(ReachTime_eVR_dVR_all>g), ReachEffic_eTV_dTV_all(ReachTime_eTV_dTV_all>g));
% p.rs_RE.eVRdTV_eTVdTV = ranksum(ReachEffic_eVR_dTV_noOutliers(ReachTime_eVR_dTV_all>g), ReachEffic_eTV_dTV_all(ReachTime_eTV_dTV_all>g));
% p.rs_RE.eVRdTV_eTVdVR = ranksum(ReachEffic_eVR_dTV_noOutliers(ReachTime_eVR_dTV_all>g), ReachEffic_eTV_dVR_noOutliers(ReachTime_eTV_dVR_all>g));

%% chi squared testing for failure rates - group testing

% Chi squared by matlab function
% reach times for eVRdVR eVRdTV
score1 = ReachTime_eVR_dVR_all(ReachTime_eVR_dVR_all>=g)>=500;  % 1 = failed trials (>=g removes all trials at are not apart of that phase)
score2 = ReachTime_eVR_dTV_all(ReachTime_eVR_dTV_all>=g)>=500;
% Make some vectors to code the groups
cod1 = 0*score1 + 1;
cod2 = 0*score2 + 2;
codes = [cod1; cod2];
scores = [score1; score2];
[tbl, chisq, p.reachFailRates_eVR_dVRdTV] = crosstab(codes,scores);

% reach times for eTVdVR eTVdTV
score1 = ReachTime_eTV_dVR_all(ReachTime_eTV_dVR_all>=g)>=500;  % 1 = true, 0 = false
score2 = ReachTime_eTV_dTV_all(ReachTime_eTV_dTV_all>=g)>=500;
% Make some vectors to code the groups
cod1 = 0*score1 + 1;
cod2 = 0*score2 + 2;
codes = [cod1; cod2];
scores = [score1; score2];
[tbl, chisq, p.reachFailRates_eTV_dVRdTV] = crosstab(codes,scores);

% carry times for eVRdVR eVRdTV
score1 = CarryTime_eVR_dVR_all(CarryTime_eVR_dVR_all>=g)>=500;  % 1 = true, 0 = false
score2 = CarryTime_eVR_dTV_all(CarryTime_eVR_dTV_all>=g)>=500;
% Make some vectors to code the groups
cod1 = 0*score1 + 1;
cod2 = 0*score2 + 2;
codes = [cod1; cod2];
scores = [score1; score2];
[tbl, chisq, p.carryFailRates_eVR_dVRdTV] = crosstab(codes,scores);

% carry times for eTVdVR eTVdTV
score1 = CarryTime_eTV_dVR_all(CarryTime_eTV_dVR_all>=g)>=500;  % 1 = true, 0 = false
score2 = CarryTime_eTV_dTV_all(CarryTime_eTV_dTV_all>=g)>=500;
% Make some vectors to code the groups
cod1 = 0*score1 + 1;
cod2 = 0*score2 + 2;
codes = [cod1; cod2];
scores = [score1; score2];
[tbl, chisq, p.carryFailRates_eTV_dVRdTV] = crosstab(codes,scores);

% testing split based on starting order
% reach eVRdVR eVRdTV starting in TV (groups 1+3)
reachTime_eVR_dVR_stTV = [ReachTime_eVR_dVR{1}; ReachTime_eVR_dVR{3}];
reachTime_eVR_dTV_stTV = [ReachTime_eVR_dTV{1}; ReachTime_eVR_dTV{3}];
score1 = reachTime_eVR_dVR_stTV(reachTime_eVR_dVR_stTV>=g)>=500;  
score2 = reachTime_eVR_dTV_stTV(reachTime_eVR_dTV_stTV>=g)>=500;
% Make some vectors to code the groups
cod1 = 0*score1 + 1;
cod2 = 0*score2 + 2;
codes = [cod1; cod2];
scores = [score1; score2];
[tbl, chisq, p.reachTime_eVR_dVRdTV_stTV] = crosstab(codes,scores);

% reach eVRdVR eVRdTV starting in VR (groups 2+4)
reachTime_eVR_dVR_stVR = [ReachTime_eVR_dVR{2}; ReachTime_eVR_dVR{4}];
reachTime_eVR_dTV_stVR = [ReachTime_eVR_dTV{2}; ReachTime_eVR_dTV{4}];
score1 = reachTime_eVR_dVR_stVR(reachTime_eVR_dVR_stVR>=g)>=500;  
score2 = reachTime_eVR_dTV_stVR(reachTime_eVR_dTV_stVR>=g)>=500;
% Make some vectors to code the groups
cod1 = 0*score1 + 1;
cod2 = 0*score2 + 2;
codes = [cod1; cod2];
scores = [score1; score2];
[tbl, chisq, p.reachTime_eVR_dVRdTV_stVR] = crosstab(codes,scores);

% reach eTVdVR eTVdTV starting in TV (groups 1+3)
reachTime_eTV_dVR_stTV = [ReachTime_eTV_dVR{1}; ReachTime_eTV_dVR{3}];
reachTime_eTV_dTV_stTV = [ReachTime_eTV_dTV{1}; ReachTime_eTV_dTV{3}];
score1 = reachTime_eTV_dVR_stTV(reachTime_eTV_dVR_stTV>=g)>=500;  
score2 = reachTime_eTV_dTV_stTV(reachTime_eTV_dTV_stTV>=g)>=500;
% Make some vectors to code the groups
cod1 = 0*score1 + 1;
cod2 = 0*score2 + 2;
codes = [cod1; cod2];
scores = [score1; score2];
[tbl, chisq, p.reachTime_eTV_dVRdTV_stTV] = crosstab(codes,scores);

% reach eTVdVR eTVdTV starting in VR (groups 2+4)
reachTime_eTV_dVR_stVR = [ReachTime_eTV_dVR{2}; ReachTime_eTV_dVR{4}];
reachTime_eTV_dTV_stVR = [ReachTime_eTV_dTV{2}; ReachTime_eTV_dTV{4}];
score1 = reachTime_eTV_dVR_stVR(reachTime_eTV_dVR_stVR>=g)>=500;  
score2 = reachTime_eTV_dTV_stVR(reachTime_eTV_dTV_stVR>=g)>=500;
% Make some vectors to code the groups
cod1 = 0*score1 + 1;
cod2 = 0*score2 + 2;
codes = [cod1; cod2];
scores = [score1; score2];
[tbl, chisq, p.reachTime_eTV_dVRdTV_stVR] = crosstab(codes,scores);

% carry eVRdVR eVRdTV starting in TV (groups 1+3)
carryTime_eVR_dVR_stTV = [CarryTime_eVR_dVR{1}; CarryTime_eVR_dVR{3}];
carryTime_eVR_dTV_stTV = [CarryTime_eVR_dTV{1}; CarryTime_eVR_dTV{3}];
score1 = carryTime_eVR_dVR_stTV(carryTime_eVR_dVR_stTV>=g)>=500;  
score2 = carryTime_eVR_dTV_stTV(carryTime_eVR_dTV_stTV>=g)>=500;
% Make some vectors to code the groups
cod1 = 0*score1 + 1;
cod2 = 0*score2 + 2;
codes = [cod1; cod2];
scores = [score1; score2];
[tbl, chisq, p.carryTime_eVR_dVRdTV_stTV] = crosstab(codes,scores);

% carry eVRdVR eVRdTV starting in VR (groups 2+4)
carryTime_eVR_dVR_stVR = [CarryTime_eVR_dVR{2}; CarryTime_eVR_dVR{4}];
carryTime_eVR_dTV_stVR = [CarryTime_eVR_dTV{2}; CarryTime_eVR_dTV{4}];
score1 = carryTime_eVR_dVR_stVR(carryTime_eVR_dVR_stVR>=g)>=500;  
score2 = carryTime_eVR_dTV_stVR(carryTime_eVR_dTV_stVR>=g)>=500;
% Make some vectors to code the groups
cod1 = 0*score1 + 1;
cod2 = 0*score2 + 2;
codes = [cod1; cod2];
scores = [score1; score2];
[tbl, chisq, p.carryTime_eVR_dVRdTV_stVR] = crosstab(codes,scores);

% carry eTVdVR eTVdTV starting in TV (groups 1+3)
carryTime_eTV_dVR_stTV = [CarryTime_eTV_dVR{1}; CarryTime_eTV_dVR{3}];
carryTime_eTV_dTV_stTV = [CarryTime_eTV_dTV{1}; CarryTime_eTV_dTV{3}];
score1 = carryTime_eTV_dVR_stTV(carryTime_eTV_dVR_stTV>=g)>=500;  
score2 = carryTime_eTV_dTV_stTV(carryTime_eTV_dTV_stTV>=g)>=500;
% Make some vectors to code the groups
cod1 = 0*score1 + 1;
cod2 = 0*score2 + 2;
codes = [cod1; cod2];
scores = [score1; score2];
[tbl, chisq, p.carryTime_eTV_dVRdTV_stTV] = crosstab(codes,scores);

% carry eTVdVR eTVdTV starting in VR (groups 2+4)
carryTime_eTV_dVR_stVR = [CarryTime_eTV_dVR{2}; CarryTime_eTV_dVR{4}];
carryTime_eTV_dTV_stVR = [CarryTime_eTV_dTV{2}; CarryTime_eTV_dTV{4}];
score1 = carryTime_eTV_dVR_stVR(carryTime_eTV_dVR_stVR>=g)>=500;  
score2 = carryTime_eTV_dTV_stVR(carryTime_eTV_dTV_stVR>=g)>=500;
% Make some vectors to code the groups
cod1 = 0*score1 + 1;
cod2 = 0*score2 + 2;
codes = [cod1; cod2];
scores = [score1; score2];
[tbl, chisq, p.carryTime_eTV_dVRdTV_stVR] = crosstab(codes,scores);
%% medians
% reach time
m.RT_eVRdVR = median(ReachTime_eVR_dVR_all(ReachTime_eVR_dVR_all>g)/50);
m.RT_eVRdTV = median(ReachTime_eVR_dTV_all(ReachTime_eVR_dTV_all>g)/50);
m.RT_eTVdVR = median(ReachTime_eTV_dVR_all(ReachTime_eTV_dVR_all>g)/50);
m.RT_eTVdTV = median(ReachTime_eTV_dTV_all(ReachTime_eTV_dTV_all>g)/50);
% reach efficiency
m.RE_eVRdVR = median(ReachEffic_eVR_dVR_all(ReachTime_eVR_dVR_all>g));
m.RE_eVRdTV = median(ReachEffic_eVR_dTV_all(ReachTime_eVR_dTV_all>g));
m.RE_eTVdVR = median(ReachEffic_eTV_dVR_all(ReachTime_eTV_dVR_all>g));
m.RE_eTVdTV = median(ReachEffic_eTV_dTV_all(ReachTime_eTV_dTV_all>g));
% carry time
m.CT_eVRdVR = median(CarryTime_eVR_dVR_all(CarryTime_eVR_dVR_all>g)/50);
m.CT_eVRdTV = median(CarryTime_eVR_dTV_all(CarryTime_eVR_dTV_all>g)/50);
m.CT_eTVdVR = median(CarryTime_eTV_dVR_all(CarryTime_eTV_dVR_all>g)/50);
m.CT_eTVdTV = median(CarryTime_eTV_dTV_all(CarryTime_eTV_dTV_all>g)/50);
% carry efficiency
m.CE_eVRdVR = median(CarryEffic_eVR_dVR_all(CarryTime_eVR_dVR_all>g));
m.CE_eVRdTV = median(CarryEffic_eVR_dTV_all(CarryTime_eVR_dTV_all>g));
m.CE_eTVdVR = median(CarryEffic_eTV_dVR_all(CarryTime_eTV_dVR_all>g));
m.CE_eTVdTV = median(CarryEffic_eTV_dTV_all(CarryTime_eTV_dTV_all>g));
% reach failure rates
m.reachFailure_eVR_dVR_all_C1 = (sum(ReachTime_eVR_dVR_all>=500)/(sum(ReachTime_eVR_dVR_all>=g)))*100; 
m.reachFailure_eVR_dTV_all_C1 = (sum(ReachTime_eVR_dTV_all>=500)/(sum(ReachTime_eVR_dTV_all>=g)))*100;  
m.reachFailure_eTV_dVR_all_C1 = (sum(ReachTime_eTV_dVR_all>=500)/(sum(ReachTime_eTV_dVR_all>=g)))*100; 
m.reachFailure_eTV_dTV_all_C1 = (sum(ReachTime_eTV_dTV_all>=500)/(sum(ReachTime_eTV_dTV_all>=g)))*100;
% carry failure rates
m.carryFailure_eVR_dVR_all_C1 = (sum(CarryTime_eVR_dVR_all>=500)/(sum(CarryTime_eVR_dVR_all>=g)))*100; 
m.carryFailure_eVR_dTV_all_C1 = (sum(CarryTime_eVR_dTV_all>=500)/(sum(CarryTime_eVR_dTV_all>=g)))*100;  
m.carryFailure_eTV_dVR_all_C1 = (sum(CarryTime_eTV_dVR_all>=500)/(sum(CarryTime_eTV_dVR_all>=g)))*100; 
m.carryFailure_eTV_dTV_all_C1 = (sum(CarryTime_eTV_dTV_all>=500)/(sum(CarryTime_eTV_dTV_all>=g)))*100;
%% violin plots
% color palette
cVR = [0.9290 0.6940 0.1250]; % yellow
cTV = [0.3010 0.7450 0.9330]; % blue
cBlack = [0 0 0]; % color median line black

% times
figure;
hold on
Swarm(1, ReachTime_eVR_dVR_all(ReachTime_eVR_dVR_all>g)/50, 'DistributionStyle','Violin','SwarmMarkerType','diamond','CenterColor',cBlack,'Color',cVR);
Swarm(1.6, ReachTime_eVR_dTV_all(ReachTime_eVR_dTV_all>g)/50,'DistributionStyle','Violin','KDBW',0.6,'CenterColor',cBlack,'Color', cTV);
Swarm(2.6, ReachTime_eTV_dVR_all(ReachTime_eTV_dVR_all>g)/50,'DistributionStyle','Violin','SwarmMarkerType','diamond','CenterColor',cBlack,'Color',cVR);
Swarm(3.2, ReachTime_eTV_dTV_all(ReachTime_eTV_dTV_all>g)/50,'DistributionStyle','Violin','KDBW',0.6,'CenterColor',cBlack,'Color',cTV);
title({'reaching time',[subject]}, 'Interpreter', 'none')
ax = gca;ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];axis([0.5 3.7 0 12]);
%ax.XTick = [1 1.5 2 2.5 3 3.5 4];axis square;box off;
ax.XTick = [1.3 2.9];axis square;
ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'', 'VR decoder','','','TV decoder'}, 'Location','bestoutside'); legend boxoff; 
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
xlabel('condition'); ylabel('time (s)')
set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('onlineDecoding_C1_ReachTimes.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_ReachTimes.jpg', session); exportgraphics(ax,filename,'Resolution',300); end
% exportgraphics(gcf,'myVectorFile.eps','BackgroundColor','none','ContentType','vector')

figure;
hold on
Swarm(1, CarryTime_eVR_dVR_all(CarryTime_eVR_dVR_all>g)/50, 'DistributionStyle','Violin','KDBW',0.6,'SwarmMarkerType','diamond','CenterColor',cBlack,'Color',cVR);
Swarm(1.6, CarryTime_eVR_dTV_all(CarryTime_eVR_dTV_all>g)/50,'DistributionStyle','Violin','KDBW',0.6,'CenterColor',cBlack,'Color', cTV);
Swarm(2.6, CarryTime_eTV_dVR_all(CarryTime_eTV_dVR_all>g)/50,'DistributionStyle','Violin','KDBW',0.6,'SwarmMarkerType','diamond','CenterColor',cBlack,'Color',cVR);
Swarm(3.2, CarryTime_eTV_dTV_all(CarryTime_eTV_dTV_all>g)/50,'DistributionStyle','Violin','KDBW',0.6,'CenterColor',cBlack,'Color',cTV);
title({'carrying time',[subject]}, 'Interpreter', 'none')
ax = gca;ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];axis([0.5 3.7 0 12]);
%ax.XTick = [1 1.5 2 2.5 3 3.5 4];axis square;box off;
ax.XTick = [1.3 2.9];axis square;
ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'', 'VR decoder','','','TV decoder'}, 'Location','bestoutside'); legend boxoff; 
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
xlabel('condition'); ylabel('time (s)')
set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('onlineDecoding_C1_CarryTimes.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_CarryTimes.jpg', session); exportgraphics(ax,filename,'Resolution',300); end



% path efficiency 
% remove outliers more than 10 IQRs away - found by plotting box plot (maybe could make this 15)
ReachEffic_eVR_dTV_noOutliers = ReachEffic_eVR_dTV_all;
ReachEffic_eVR_dTV_noOutliers(find(ReachEffic_eVR_dTV_noOutliers>300)) = NaN;
ReachEffic_eVR_dVR_noOutliers = ReachEffic_eVR_dVR_all;
ReachEffic_eVR_dVR_noOutliers(find(ReachEffic_eVR_dVR_noOutliers>70)) = NaN;
ReachEffic_eTV_dVR_noOutliers = ReachEffic_eTV_dVR_all;
ReachEffic_eTV_dVR_noOutliers(find(ReachEffic_eTV_dVR_noOutliers>100)) = NaN;
figure;
hold on
Swarm(1, ReachEffic_eVR_dVR_noOutliers(ReachTime_eVR_dVR_all>g), 'DistributionStyle','Violin','KDBW',2,'SwarmMarkerType','diamond','CenterColor',cBlack,'Color',cVR);
Swarm(1.6, ReachEffic_eVR_dTV_noOutliers(ReachTime_eVR_dTV_all>g),'DistributionStyle','Violin','KDBW',2.5,'CenterColor',cBlack,'Color', cTV);
Swarm(2.6, ReachEffic_eTV_dVR_noOutliers(ReachTime_eTV_dVR_all>g),'DistributionStyle','Violin','SwarmMarkerType','diamond','KDBW',2.8,'CenterColor',cBlack,'Color',cVR);
Swarm(3.2, ReachEffic_eTV_dTV_all(ReachTime_eTV_dTV_all>g),'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
title({'reach path efficiency',[subject]}, 'Interpreter', 'none')
ax = gca;%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10]; 
axis([0.5 3.7 0 140]);
%ax.XTick = [1 1.5 2 2.5 3 3.5 4];axis square;box off;
ax.XTick = [1.3 2.9];axis square;
ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'', 'VR decoder','','','TV decoder'}, 'Location','bestoutside'); legend boxoff; 
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
xlabel('condition'); ylabel('path efficiency')
set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('session%s_ReachEffic_noOutliers.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_ReachEffic_noOutliers.jpg', session); exportgraphics(ax,filename,'Resolution',300); end

% find points aboe 99th percentile of data and zoom in on plot
ReachEffic_99prctile = prctile([ReachEffic_eVR_dVR_noOutliers; ReachEffic_eVR_dTV_noOutliers; ReachEffic_eTV_dVR_noOutliers; ReachEffic_eTV_dTV_all],99);
ReachEffic_VRVR_zoom = ReachEffic_eVR_dVR_noOutliers;
ReachEffic_VRVR_zoom(find(ReachEffic_VRVR_zoom>ReachEffic_99prctile)) = ReachEffic_99prctile;
ReachEffic_VRTV_zoom = ReachEffic_eVR_dTV_noOutliers;
ReachEffic_VRTV_zoom(find(ReachEffic_VRTV_zoom>ReachEffic_99prctile)) = ReachEffic_99prctile;
ReachEffic_TVVR_zoom = ReachEffic_eTV_dVR_noOutliers;
ReachEffic_TVVR_zoom(find(ReachEffic_TVVR_zoom>ReachEffic_99prctile)) = ReachEffic_99prctile;
ReachEffic_TVTV_zoom = ReachEffic_eTV_dTV_all;
ReachEffic_TVTV_zoom(find(ReachEffic_TVTV_zoom>ReachEffic_99prctile)) = ReachEffic_99prctile;
figure;
hold on
Swarm(1, ReachEffic_VRVR_zoom(ReachTime_eVR_dVR_all>g), 'DistributionStyle','Violin','KDBW',2,'SwarmMarkerType','diamond','CenterColor',cBlack,'Color',cVR);
Swarm(1.6, ReachEffic_VRTV_zoom(ReachTime_eVR_dTV_all>g),'DistributionStyle','Violin','KDBW',2.5,'CenterColor',cBlack,'Color', cTV);
Swarm(2.6, ReachEffic_TVVR_zoom(ReachTime_eTV_dVR_all>g),'DistributionStyle','Violin','SwarmMarkerType','diamond','KDBW',2.8,'CenterColor',cBlack,'Color',cVR);
Swarm(3.2, ReachEffic_TVTV_zoom(ReachTime_eTV_dTV_all>g),'DistributionStyle','Violin','CenterColor',cBlack,'Color',cTV);
title({'reach path efficiency',[subject]}, 'Interpreter', 'none')
ax = gca;%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10]; 
axis([0.5 3.7 0 64]);
%ax.XTick = [1 1.5 2 2.5 3 3.5 4];axis square;box off;
ax.XTick = [1.3 2.9];axis square;
ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'', 'VR decoder','','','TV decoder'}, 'Location','bestoutside'); legend boxoff; 
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
xlabel('condition'); ylabel('path efficiency')
set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('session%s_ReachEffic_noOutliers_zoom.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_ReachEffic_noOutliers_zoom.jpg', session); exportgraphics(ax,filename,'Resolution',300); end


% plot boxplots to find outliers
figure;
subplot(1,3,1)
boxplot(ReachEffic_eVR_dTV_all(ReachTime_eVR_dTV_all>g)) % remove 1 data point (160) = 0.6% data removed
title('env VR, dec TV')
subplot(1,3,2)
boxplot(ReachEffic_eVR_dVR_all(ReachTime_eVR_dVR_all>g)) % remove 1 data point (162) = 0.6% data removed
title('env VR, dec VR')
subplot(1,3,3)
boxplot(ReachEffic_eTV_dVR_all(ReachTime_eTV_dVR_all>g)) % remove 2 data points (169) = 1.18% data removed
title('env TV, dec VR')
%sgtitle('boxplots - remove outliers more than 10 IQRs from median')
set(gcf, 'Color', 'w')

% path efficiency (all data - log scale)
figure;
hold on
Swarm(1, log(ReachEffic_eVR_dVR_all(ReachTime_eVR_dVR_all>g)), 'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(1.6, log(ReachEffic_eVR_dTV_all(ReachTime_eVR_dTV_all>g)),'DistributionStyle','Violin','Color', cTV);
Swarm(2.6, log(ReachEffic_eTV_dVR_all(ReachTime_eTV_dVR_all>g)),'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(3.2, log(ReachEffic_eTV_dTV_all(ReachTime_eTV_dTV_all>g)),'DistributionStyle','Violin','KDBW',1,'Color',cTV);
title({'reach path efficiency',[subject]}, 'Interpreter', 'none')
ax = gca;%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10]; axis([0.5 3.7 0 40]);
%ax.XTick = [1 1.5 2 2.5 3 3.5 4];axis square;box off;
ax.XTick = [1.3 2.9];
axis([0.5 4 log(1) 7]); axis square
ax.YTick = [log([1, 10, 100])]; ax.YTickLabel = [1 10 100];
ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'', 'VR decoder','','','TV decoder'}, 'Location','bestoutside'); legend boxoff; 
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
xlabel('condition'); %ylabel('time (s)')
set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('onlineDecoding_C1_ReachEffic.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_ReachEffic.jpg', session); exportgraphics(ax,filename,'Resolution',300); end

figure;
hold on
Swarm(1, log(CarryEffic_eVR_dVR_all(CarryTime_eVR_dVR_all>g)), 'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(1.6, log(CarryEffic_eVR_dTV_all(CarryTime_eVR_dTV_all>g)),'DistributionStyle','Violin','Color', cTV);
Swarm(2.6, log(CarryEffic_eTV_dVR_all(CarryTime_eTV_dVR_all>g)),'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(3.2, log(CarryEffic_eTV_dTV_all(CarryTime_eTV_dTV_all>g)),'DistributionStyle','Violin','Color',cTV);
title({'carry path efficiency',[subject]}, 'Interpreter', 'none')
ax = gca;%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];
axis([0.5 3.7 0 140]);
axis([0.5 4 log(1) 7]); axis square
ax.YTick = [log([1, 10, 100])]; ax.YTickLabel = [1 10 100];
ax.XTick = [1.3 2.9];axis square;
ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'', 'VR decoder','','','TV decoder'}, 'Location','bestoutside'); legend boxoff; 
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
xlabel('condition'); ylabel('path efficiency')
set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('onlineDecoding_C1_CarryEffic.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_CarryEffic.jpg', session); exportgraphics(ax,filename,'Resolution',300); end



% overall path length
figure;
hold on
Swarm(1, ReachLength_xyz_eVR_dVR_all(ReachTime_eVR_dVR_all>g), 'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(1.6, ReachLength_xyz_eVR_dTV_all(ReachTime_eVR_dTV_all>g),'DistributionStyle','Violin','Color', cTV);
Swarm(2.6, ReachLength_xyz_eTV_dVR_all(ReachTime_eTV_dVR_all>g),'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(3.2, ReachLength_xyz_eTV_dTV_all(ReachTime_eTV_dTV_all>g),'DistributionStyle','Violin','Color',cTV); 
title({'reach path (xyz total)',[subject]}, 'Interpreter', 'none')
ax = gca;%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];
axis([0.5 3.7 0 60]);
%ax.XTick = [1 1.5 2 2.5 3 3.5 4];axis square;box off;
ax.XTick = [1.3 2.9];axis square;
ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'', 'VR decoder','','','TV decoder'}, 'Location','bestoutside'); legend boxoff; 
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
xlabel('condition'); %ylabel('time (s)')
set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('session%s_ReachLength_xyz.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_ReachLength_xyz.jpg', session); exportgraphics(ax,filename,'Resolution',300); end


figure;
hold on
Swarm(1, CarryLength_xyz_eVR_dVR_all(CarryTime_eVR_dVR_all>g), 'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(1.6, CarryLength_xyz_eVR_dTV_all(CarryTime_eVR_dTV_all>g),'DistributionStyle','Violin','Color', cTV);
Swarm(2.6, CarryLength_xyz_eTV_dVR_all(CarryTime_eTV_dVR_all>g),'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(3.2, CarryLength_xyz_eTV_dTV_all(CarryTime_eTV_dTV_all>g),'DistributionStyle','Violin','Color',cTV);
title({'carry path (xyz total)',[subject]}, 'Interpreter', 'none')
ax = gca;%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];
axis([0.5 3.7 0 60]);
%ax.XTick = [1 1.5 2 2.5 3 3.5 4];axis square;box off;
ax.XTick = [1.3 2.9];axis square;
ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'', 'VR decoder','','','TV decoder'}, 'Location','bestoutside'); legend boxoff; 
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
xlabel('condition'); %ylabel('time (s)')
set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('session%s_CarryLength_xyz.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_CarryLength_xyz.jpg', session); exportgraphics(ax,filename,'Resolution',300); end


% path by dimension
figure;
hold on
Swarm(1, ReachLength_x_eVR_dVR_all(ReachTime_eVR_dVR_all>g), 'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(1.6, ReachLength_x_eVR_dTV_all(ReachTime_eVR_dTV_all>g),'DistributionStyle','Violin','Color', cTV);
Swarm(2.6, ReachLength_x_eTV_dVR_all(ReachTime_eTV_dVR_all>g),'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(3.2, ReachLength_x_eTV_dTV_all(ReachTime_eTV_dTV_all>g),'DistributionStyle','Violin','Color',cTV);
title({'reach path - X',[subject]}, 'Interpreter', 'none')
ax = gca;%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];
axis([0.5 3.7 0 30]);
%ax.XTick = [1 1.5 2 2.5 3 3.5 4];axis square;box off;
ax.XTick = [1.3 2.9];axis square;
ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'', 'VR decoder','','','TV decoder'}, 'Location','bestoutside'); legend boxoff; 
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
xlabel('condition'); %ylabel('time (s)')
set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('session%s_ReachLength_x.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_ReachLength_x.jpg', session); exportgraphics(ax,filename,'Resolution',300); end


figure;
hold on
Swarm(1, ReachLength_y_eVR_dVR_all(ReachTime_eVR_dVR_all>g), 'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(1.6, ReachLength_y_eVR_dTV_all(ReachTime_eVR_dTV_all>g),'DistributionStyle','Violin','Color', cTV);
Swarm(2.6, ReachLength_y_eTV_dVR_all(ReachTime_eTV_dVR_all>g),'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(3.2, ReachLength_y_eTV_dTV_all(ReachTime_eTV_dTV_all>g),'DistributionStyle','Violin','Color',cTV);
title({'reach path - Y',[subject]}, 'Interpreter', 'none')
ax = gca;%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];
axis([0.5 3.7 0 30]);
%ax.XTick = [1 1.5 2 2.5 3 3.5 4];axis square;box off;
ax.XTick = [1.3 2.9];axis square;
ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'', 'VR decoder','','','TV decoder'}, 'Location','bestoutside'); legend boxoff; 
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
xlabel('condition'); %ylabel('time (s)')
set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('session%s_ReachLength_y.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_ReachLength_y.jpg', session); exportgraphics(ax,filename,'Resolution',300); end

figure;
hold on
Swarm(1, ReachLength_z_eVR_dVR_all(ReachTime_eVR_dVR_all>g), 'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(1.6, ReachLength_z_eVR_dTV_all(ReachTime_eVR_dTV_all>g),'DistributionStyle','Violin','Color', cTV); 
Swarm(2.6, ReachLength_z_eTV_dVR_all(ReachTime_eTV_dVR_all>g),'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(3.2, ReachLength_z_eTV_dTV_all(ReachTime_eTV_dTV_all>g),'DistributionStyle','Violin','Color',cTV);
title({'reach path - Z',[subject]}, 'Interpreter', 'none')
ax = gca;%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];
axis([0.5 3.7 0 30]);
%ax.XTick = [1 1.5 2 2.5 3 3.5 4];axis square;box off;
ax.XTick = [1.3 2.9];axis square;
ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'', 'VR decoder','','','TV decoder'}, 'Location','bestoutside'); legend boxoff; 
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
xlabel('condition'); %ylabel('time (s)')
set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('session%s_ReachLength_z.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_ReachLength_z.jpg', session); exportgraphics(ax,filename,'Resolution',300); end

figure;
hold on
Swarm(1, CarryLength_x_eVR_dVR_all(CarryTime_eVR_dVR_all>g), 'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(1.6, CarryLength_x_eVR_dTV_all(CarryTime_eVR_dTV_all>g),'DistributionStyle','Violin','Color', cTV);
Swarm(2.6, CarryLength_x_eTV_dVR_all(CarryTime_eTV_dVR_all>g),'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(3.2, CarryLength_x_eTV_dTV_all(CarryTime_eTV_dTV_all>g),'DistributionStyle','Violin','KDBW',1.2,'Color',cTV);
title({'carry path - X',[subject]}, 'Interpreter', 'none')
ax = gca;%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];
axis([0.5 3.7 0 35]);
%ax.XTick = [1 1.5 2 2.5 3 3.5 4];axis square;box off;
ax.XTick = [1.3 2.9];axis square;
ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'', 'VR decoder','','','TV decoder'}, 'Location','bestoutside'); legend boxoff; 
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
xlabel('condition'); %ylabel('time (s)')
set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('session%s_CarryLength_x.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_CarryLength_x.jpg', session); exportgraphics(ax,filename,'Resolution',300); end

figure;
hold on
Swarm(1, CarryLength_y_eVR_dVR_all(CarryTime_eVR_dVR_all>g), 'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(1.6, CarryLength_y_eVR_dTV_all(CarryTime_eVR_dTV_all>g),'DistributionStyle','Violin','Color', cTV);
Swarm(2.6, CarryLength_y_eTV_dVR_all(CarryTime_eTV_dVR_all>g),'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(3.2, CarryLength_y_eTV_dTV_all(CarryTime_eTV_dTV_all>g),'DistributionStyle','Violin','Color',cTV);
title({'carry path - Y ',[subject]}, 'Interpreter', 'none')
ax = gca;%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];
axis([0.5 3.7 0 35]);
%ax.XTick = [1 1.5 2 2.5 3 3.5 4];axis square;box off;
ax.XTick = [1.3 2.9];axis square;
ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'', 'VR decoder','','','TV decoder'}, 'Location','bestoutside'); legend boxoff; 
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
xlabel('condition'); %ylabel('time (s)')
set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('session%s_CarryLength_y.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_CarryLength_y.jpg', session); exportgraphics(ax,filename,'Resolution',300); end

figure;
hold on
Swarm(1, CarryLength_z_eVR_dVR_all(CarryTime_eVR_dVR_all>g), 'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(1.6, CarryLength_z_eVR_dTV_all(CarryTime_eVR_dTV_all>g),'DistributionStyle','Violin','Color', cTV);
Swarm(2.6, CarryLength_z_eTV_dVR_all(CarryTime_eTV_dVR_all>g),'DistributionStyle','Violin','SwarmMarkerType','diamond','Color',cVR);
Swarm(3.2, CarryLength_z_eTV_dTV_all(CarryTime_eTV_dTV_all>g),'DistributionStyle','Violin','Color',cTV);
title({'carry path - Z',[subject]}, 'Interpreter', 'none')
ax = gca;%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];
axis([0.5 3.7 0 35]);
%ax.XTick = [1 1.5 2 2.5 3 3.5 4];axis square;box off;
ax.XTick = [1.3 2.9];axis square;
ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'', 'VR decoder','','','TV decoder'}, 'Location','bestoutside'); legend boxoff; 
ax.FontSize  = 14; xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
xlabel('condition'); %ylabel('time (s)')
set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('session%s_CarryLength_z.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_CarryLength_z.jpg', session); exportgraphics(ax,filename,'Resolution',300); end

%% failure rates
% failure rates - reach - BCI02
reachFailure.eVR_dVR_1_C1 = (sum(ReachTime_eVR_dVR{1}>=500)/(sum(ReachTime_eVR_dVR{1}>=g)))*100; 
reachFailure.eVR_dTV_1_C1 = (sum(ReachTime_eVR_dTV{1}>=500)/(sum(ReachTime_eVR_dTV{1}>=g)))*100;  % (num failed trials) / (num trials in that epoch) * 100 = failure rate (excluding trials less than 10 bins)
reachFailure.eTV_dVR_1_C1 = (sum(ReachTime_eTV_dVR{1}>=500)/(sum(ReachTime_eTV_dVR{1}>=g)))*100; 
reachFailure.eTV_dTV_1_C1 = (sum(ReachTime_eTV_dTV{1}>=500)/(sum(ReachTime_eTV_dTV{1}>=g)))*100;

reachFailure.eVR_dVR_2_C1 = (sum(ReachTime_eVR_dVR{2}>=500)/(sum(ReachTime_eVR_dVR{2}>=g)))*100; 
reachFailure.eVR_dTV_2_C1 = (sum(ReachTime_eVR_dTV{2}>=500)/(sum(ReachTime_eVR_dTV{2}>=g)))*100;  
reachFailure.eTV_dVR_2_C1 = (sum(ReachTime_eTV_dVR{2}>=500)/(sum(ReachTime_eTV_dVR{2}>=g)))*100; 
reachFailure.eTV_dTV_2_C1 = (sum(ReachTime_eTV_dTV{2}>=500)/(sum(ReachTime_eTV_dTV{2}>=g)))*100;

reachFailure.eVR_dVR_3_C1 = (sum(ReachTime_eVR_dVR{3}>=500)/(sum(ReachTime_eVR_dVR{3}>=g)))*100; 
reachFailure.eVR_dTV_3_C1 = (sum(ReachTime_eVR_dTV{3}>=500)/(sum(ReachTime_eVR_dTV{3}>=g)))*100;  
reachFailure.eTV_dVR_3_C1 = (sum(ReachTime_eTV_dVR{3}>=500)/(sum(ReachTime_eTV_dVR{3}>=g)))*100; 
reachFailure.eTV_dTV_3_C1 = (sum(ReachTime_eTV_dTV{3}>=500)/(sum(ReachTime_eTV_dTV{3}>=g)))*100;

reachFailure.eVR_dVR_4_C1 = (sum(ReachTime_eVR_dVR{4}>=500)/(sum(ReachTime_eVR_dVR{4}>=g)))*100; 
reachFailure.eVR_dTV_4_C1 = (sum(ReachTime_eVR_dTV{4}>=500)/(sum(ReachTime_eVR_dTV{4}>=g)))*100;  
reachFailure.eTV_dVR_4_C1 = (sum(ReachTime_eTV_dVR{4}>=500)/(sum(ReachTime_eTV_dVR{4}>=g)))*100; 
reachFailure.eTV_dTV_4_C1 = (sum(ReachTime_eTV_dTV{4}>=500)/(sum(ReachTime_eTV_dTV{4}>=g)))*100;

% failure rates - reach overall - BCI02
reachFailure.eVR_dVR_all_C1 = (sum(ReachTime_eVR_dVR_all>=500)/(sum(ReachTime_eVR_dVR_all>=g)))*100; 
reachFailure.eVR_dTV_all_C1 = (sum(ReachTime_eVR_dTV_all>=500)/(sum(ReachTime_eVR_dTV_all>=g)))*100;  
reachFailure.eTV_dVR_all_C1 = (sum(ReachTime_eTV_dVR_all>=500)/(sum(ReachTime_eTV_dVR_all>=g)))*100; 
reachFailure.eTV_dTV_all_C1 = (sum(ReachTime_eTV_dTV_all>=500)/(sum(ReachTime_eTV_dTV_all>=g)))*100;

% failure rates - reach plot
figure; hold on % VR environment
bar(0.9,reachFailure.eVR_dVR_all_C1, 0.55, 'FaceColor',cVR, 'FaceAlpha',0.5, 'EdgeColor',cVR)
bar(1.55,reachFailure.eVR_dTV_all_C1, 0.55, 'FaceColor',cTV, 'FaceAlpha',0.5, 'EdgeColor',cTV)
plot([0.9,1.55], [reachFailure.eVR_dVR_1_C1, reachFailure.eVR_dTV_1_C1], 'Color', 'k', 'LineStyle','-', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([0.9,1.55], [reachFailure.eVR_dVR_2_C1, reachFailure.eVR_dTV_2_C1], 'Color','k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([0.9,1.55], [reachFailure.eVR_dVR_3_C1, reachFailure.eVR_dTV_3_C1], 'Color','k', 'LineStyle','-', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([0.9,1.55], [reachFailure.eVR_dVR_4_C1, reachFailure.eVR_dTV_4_C1], 'Color','k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
% TV environment
bar(2.4,reachFailure.eTV_dVR_all_C1, 0.55,'FaceColor',cVR, 'FaceAlpha',0.5, 'EdgeColor',cVR)
bar(3.05,reachFailure.eTV_dTV_all_C1, 0.55, 'FaceColor',cTV, 'FaceAlpha',0.5, 'EdgeColor',cTV)
plot([2.4,3.05], [reachFailure.eTV_dVR_1_C1, reachFailure.eTV_dTV_1_C1], 'Color', 'k', 'LineStyle','-', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([2.4,3.05], [reachFailure.eTV_dVR_2_C1, reachFailure.eTV_dTV_2_C1], 'Color', 'k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([2.4,3.05], [reachFailure.eTV_dVR_3_C1, reachFailure.eTV_dTV_3_C1], 'Color', 'k', 'LineStyle','-', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([2.4,3.05], [reachFailure.eTV_dVR_4_C1, reachFailure.eTV_dTV_4_C1], 'Color', 'k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
ylim([0 68]); xlim([0.5 3.5]); 
ax = gca; ax.XTick = [0.9 1.225 1.55 2.4 2.725 3.05]; axis square; ax.FontSize  = 16; set(gcf, 'Color', 'w')
set(gca(),'XTickLabel',{'VR d',sprintf('\\newlineVR Environment'), 'TV d','VR d',sprintf('\\newlineTV Environment'), 'TV d'}); xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
title('Reach') ; ylabel('% Failed Trials')
if saveFigs == 1; filename = sprintf('onlineDecoding_C1_FailureRates_Reach.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end

% failure rates - carry - BCI02
carryFailure.eVR_dVR_1_C1 = (sum(CarryTime_eVR_dVR{1}>=500)/(sum(CarryTime_eVR_dVR{1}>=g)))*100; 
carryFailure.eVR_dTV_1_C1 = (sum(CarryTime_eVR_dTV{1}>=500)/(sum(CarryTime_eVR_dTV{1}>=g)))*100;  % (num failed trials) / (num trials in that epoch) * 100 = failure rate (excluding trials less than 10 bins)
carryFailure.eTV_dVR_1_C1 = (sum(CarryTime_eTV_dVR{1}>=500)/(sum(CarryTime_eTV_dVR{1}>=g)))*100; 
carryFailure.eTV_dTV_1_C1 = (sum(CarryTime_eTV_dTV{1}>=500)/(sum(CarryTime_eTV_dTV{1}>=g)))*100;

carryFailure.eVR_dVR_2_C1 = (sum(CarryTime_eVR_dVR{2}>=500)/(sum(CarryTime_eVR_dVR{2}>=g)))*100; 
carryFailure.eVR_dTV_2_C1 = (sum(CarryTime_eVR_dTV{2}>=500)/(sum(CarryTime_eVR_dTV{2}>=g)))*100;  
carryFailure.eTV_dVR_2_C1 = (sum(CarryTime_eTV_dVR{2}>=500)/(sum(CarryTime_eTV_dVR{2}>=g)))*100; 
carryFailure.eTV_dTV_2_C1 = (sum(CarryTime_eTV_dTV{2}>=500)/(sum(CarryTime_eTV_dTV{2}>=g)))*100;

carryFailure.eVR_dVR_3_C1 = (sum(CarryTime_eVR_dVR{3}>=500)/(sum(CarryTime_eVR_dVR{3}>=g)))*100; 
carryFailure.eVR_dTV_3_C1 = (sum(CarryTime_eVR_dTV{3}>=500)/(sum(CarryTime_eVR_dTV{3}>=g)))*100;  
carryFailure.eTV_dVR_3_C1 = (sum(CarryTime_eTV_dVR{3}>=500)/(sum(CarryTime_eTV_dVR{3}>=g)))*100; 
carryFailure.eTV_dTV_3_C1 = (sum(CarryTime_eTV_dTV{3}>=500)/(sum(CarryTime_eTV_dTV{3}>=g)))*100;

carryFailure.eVR_dVR_4_C1 = (sum(CarryTime_eVR_dVR{4}>=500)/(sum(CarryTime_eVR_dVR{4}>=g)))*100; 
carryFailure.eVR_dTV_4_C1 = (sum(CarryTime_eVR_dTV{4}>=500)/(sum(CarryTime_eVR_dTV{4}>=g)))*100;  
carryFailure.eTV_dVR_4_C1 = (sum(CarryTime_eTV_dVR{4}>=500)/(sum(CarryTime_eTV_dVR{4}>=g)))*100; 
carryFailure.eTV_dTV_4_C1 = (sum(CarryTime_eTV_dTV{4}>=500)/(sum(CarryTime_eTV_dTV{4}>=g)))*100;

% failure rates - carry overall - BCI02
carryFailure.eVR_dVR_all_C1 = (sum(CarryTime_eVR_dVR_all>=500)/(sum(CarryTime_eVR_dVR_all>=g)))*100; 
carryFailure.eVR_dTV_all_C1 = (sum(CarryTime_eVR_dTV_all>=500)/(sum(CarryTime_eVR_dTV_all>=g)))*100;  
carryFailure.eTV_dVR_all_C1 = (sum(CarryTime_eTV_dVR_all>=500)/(sum(CarryTime_eTV_dVR_all>=g)))*100; 
carryFailure.eTV_dTV_all_C1 = (sum(CarryTime_eTV_dTV_all>=500)/(sum(CarryTime_eTV_dTV_all>=g)))*100;

% failure rates - carry plot
figure; hold on % VR environment
bar(0.9,carryFailure.eVR_dVR_all_C1, 0.55, 'FaceColor',cVR, 'FaceAlpha',0.5, 'EdgeColor',cVR)
bar(1.55,carryFailure.eVR_dTV_all_C1, 0.55, 'FaceColor',cTV, 'FaceAlpha',0.5, 'EdgeColor',cTV)
plot([0.9,1.55], [carryFailure.eVR_dVR_1_C1, carryFailure.eVR_dTV_1_C1], 'Color', 'k', 'LineStyle','-', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([0.9,1.55], [carryFailure.eVR_dVR_2_C1, carryFailure.eVR_dTV_2_C1], 'Color','k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([0.9,1.55], [carryFailure.eVR_dVR_3_C1, carryFailure.eVR_dTV_3_C1], 'Color','k', 'LineStyle','-', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([0.9,1.55], [carryFailure.eVR_dVR_4_C1, carryFailure.eVR_dTV_4_C1], 'Color','k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
% TV environment
bar(2.4,carryFailure.eTV_dVR_all_C1, 0.55,'FaceColor',cVR, 'FaceAlpha',0.5, 'EdgeColor',cVR)
bar(3.05,carryFailure.eTV_dTV_all_C1, 0.55, 'FaceColor',cTV, 'FaceAlpha',0.5, 'EdgeColor',cTV)
plot([2.4,3.05], [carryFailure.eTV_dVR_1_C1, carryFailure.eTV_dTV_1_C1], 'Color', 'k', 'LineStyle','-', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([2.4,3.05], [carryFailure.eTV_dVR_2_C1, carryFailure.eTV_dTV_2_C1], 'Color', 'k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([2.4,3.05], [carryFailure.eTV_dVR_3_C1, carryFailure.eTV_dTV_3_C1], 'Color', 'k', 'LineStyle','-', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
plot([2.4,3.05], [carryFailure.eTV_dVR_4_C1, carryFailure.eTV_dTV_4_C1], 'Color', 'k', 'LineStyle','--', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
ylim([0 68]); xlim([0.5 3.5]); 
ax = gca; ax.XTick = [0.9 1.225 1.55 2.4 2.725 3.05]; axis square; ax.FontSize  = 16; set(gcf, 'Color', 'w')
set(gca(),'XTickLabel',{'VR d',sprintf('\\newlineVR Environment'), 'TV d','VR d',sprintf('\\newlineTV Environment'), 'TV d'}); xtickangle(ax,0); ax.XAxis.TickLength = [0 0];
title('Carry') ; ylabel('% Failed Trials')
if saveFigs == 1; filename = sprintf('onlineDecoding_C1_FailureRates_Carry.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end

%% bar graph success rates
success_eVR_dVR = (sum([47,45,52])/sum([72,54,54]))*100;
success_eVR_dTV = (sum([ 4,50, 1])/sum([72,54,54]))*100;
success_eTV_dVR = (sum([48,44,50])/sum([72,54,54]))*100;
success_eTV_dTV = (sum([ 4,42, 1])/sum([72,54,54]))*100;

% figure
% b = bar([success_eVR_dVR success_eVR_dTV, success_eTV_dVR success_eTV_dTV]);
% ylim([0 100]); axis square; ax = gca;
% ax.XTick = [1.5 3.5]; ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
% b.FaceColor = 'flat'; b.CData(1,:) = cVR; b.CData(2,:) = cTV; b.CData(3,:) = cVR; b.CData(4,:) = cTV; 
% legend({'VR decoder', 'TV decoder'})

figure
hold on
bar(1,success_eVR_dVR, 'FaceColor',cVR, 'EdgeColor','none', 'BarWidth',0.75);
bar(1.9,success_eVR_dTV, 'FaceColor',cTV,'EdgeColor','none');
bar(3.25, success_eTV_dVR, 'FaceColor',cVR,'EdgeColor','none');
bar(4.15, success_eTV_dTV, 'FaceColor',cTV,'EdgeColor','none');
ylim([0 100]); xlim([0.5 5]); axis square; ax = gca;
ax.XTick = [1.45 3.7]; ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
ax.YTick = [0 20 40 60 80 100];
legend({'VR decoder', 'TV decoder'}, 'Location', 'bestoutside'); legend boxoff
ylabel('percent correct %'); title('Success Rates')
ax.FontSize  = 14; set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('session%s_successRates.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_successRates.jpg', session); exportgraphics(ax,filename,'Resolution',300); end

%% success by order session
success_eVRdVR_sTV = (sum([47,52])/sum([72,54]))*100;
success_eVRdTV_sTV = (sum([ 4, 1])/sum([72,54]))*100;
success_eTVdVR_sTV = (sum([48,50])/sum([72,54]))*100;
success_eTVdTV_sTV = (sum([ 4, 1])/sum([72,54]))*100;

success_eVRdVR_sVR = (sum([45,51])/sum([54,54]))*100;
success_eVRdTV_sVR = (sum([50,46])/sum([54,54]))*100;
success_eTVdVR_sVR = (sum([44,52])/sum([54,54]))*100;
success_eTVdTV_sVR = (sum([42,46])/sum([54,54]))*100;

cVR = [0.9290 0.6940 0.1250]; % yellow
cTV = [0.3010 0.7450 0.9330]; % blue

figure
hold on
bar(1,success_eVRdVR_sTV, 'FaceColor',cVR, 'EdgeColor','none');
bar(1.9,success_eVRdTV_sTV, 'FaceColor',cTV,'EdgeColor','none');
bar(3.25, success_eTVdVR_sTV, 'FaceColor',cVR,'EdgeColor','none');
bar(4.15, success_eTVdTV_sTV, 'FaceColor',cTV,'EdgeColor','none');
ylim([0 100]); xlim([0.5 5]); axis square; ax = gca;
ax.XTick = [1.45 3.7]; ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
ax.YTick = [0 20 40 60 80 100];
ax.XTick = [1.5 4]; ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'VR decoder', 'TV decoder'}, 'Location', 'bestoutside'); legend boxoff
ylabel('percent correct %'); title('Success Rates - starting in TV')
ax.FontSize  = 14; set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('session%s_successRates_startTV.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_successRates_startTV.jpg', session); exportgraphics(ax,filename,'Resolution',300); end

figure
hold on
bar(1,success_eVRdVR_sVR, 'FaceColor',cVR, 'EdgeColor','none');
bar(1.9,success_eVRdTV_sVR, 'FaceColor',cTV,'EdgeColor','none');
bar(3.25, success_eTVdVR_sVR, 'FaceColor',cVR,'EdgeColor','none');
bar(4.15, success_eTVdTV_sVR, 'FaceColor',cTV,'EdgeColor','none');
ylim([0 100]); xlim([0.5 5]); axis square; ax = gca;
ax.XTick = [1.45 3.7]; ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
ax.YTick = [0 20 40 60 80 100];
ax.XTick = [1.5 4]; ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'VR decoder', 'TV decoder'}, 'Location', 'bestoutside'); legend boxoff
ylabel('percent correct %'); title('Success Rates - starting in VR')
ax.FontSize  = 14; set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('session%s_successRates_startVR.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_successRates_startVR.jpg', session); exportgraphics(ax,filename,'Resolution',300); end


figure
hold on
bar(1,(success_eVRdVR_sVR+success_eVRdVR_sTV)/2, 'FaceColor',cVR, 'EdgeColor','none');
bar(1.9,(success_eVRdTV_sVR+success_eVRdTV_sTV)/2, 'FaceColor',cTV,'EdgeColor','none');
bar(3.25, (success_eTVdVR_sVR+success_eTVdVR_sTV)/2, 'FaceColor',cVR,'EdgeColor','none');
bar(4.15, (success_eTVdTV_sVR+success_eTVdTV_sTV)/2, 'FaceColor',cTV,'EdgeColor','none');
ylim([0 100]); xlim([0.5 5]); axis square; ax = gca;
ax.XTick = [1.45 3.7]; ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
ax.YTick = [0 20 40 60 80 100];
ax.XTick = [1.5 4]; ax.XTickLabel = [{'VR Environment'} {'TV Environment'}];
legend({'VR decoder', 'TV decoder'}, 'Location', 'bestoutside'); legend boxoff
ylabel('percent correct %'); title('Success Rates - overall')
ax.FontSize  = 14; set(gcf, 'Color', 'w')
if saveFigs == 1; filename = sprintf('session%s_successRates_startVR.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector'); end
if saveFigs == 2; filename = sprintf('session%s_successRates_startVR.jpg', session); exportgraphics(ax,filename,'Resolution',300); end