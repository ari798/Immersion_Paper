%% load in data
addpath(genpath("C:\Users\ari798\Documents\GitHub")) %laptop
session_path = 'T:\SessionData\BCI02\MotorExperiments\BCI02.data.00317'; %317; 331; 333
%session_path = 'T:\SessionData\CRS08\MotorExperiments\CRS08Lab.data.00082';%64; 82
all_set_files = dir(fullfile(session_path, '*.Set*.bin'));
pat = ".Set" + digitsPattern(4) + ".";
exp_sets_TV = [37:39]; exp_sets_VR = [17:19]; session = 317; type = 'obs';task = 'grasp & carry'; subject = 'C1';
%exp_sets_TV = [1:2]; exp_sets_VR = [10:11]; session = 331; type = 'obs'; task = 'grasp & carry'; subject = 'C1';
%exp_sets_TV = [1:3]; exp_sets_VR = [11:13]; session = 333; type = 'obs'; task = 'grasp & carry'; subject = 'C1';
%exp_sets_TV = [13:14]; exp_sets_VR = [5:6]; session = 64; type = 'obs'; task = 'grasp & carry'; subject = 'P4';
%exp_sets_TV = [1:2]; exp_sets_VR = [11:12]; session = 82; type = 'obs'; task = 'grasp & carry'; subject = 'P4';

% load in TV environment
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_TV)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_TV{fIdx,1} = fullfile(session_path, fName.name);
end
TV_Data_317 = prepData('files',filepath_TV);

% load in VR environment
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_VR)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_VR{fIdx,1} = fullfile(session_path, fName.name);
end
VR_Data_317 = prepData('files',filepath_VR);

% 331
session_path = 'T:\SessionData\BCI02\MotorExperiments\BCI02.data.00331'; %317; 331; 333
all_set_files = dir(fullfile(session_path, '*.Set*.bin'));
pat = ".Set" + digitsPattern(4) + ".";
exp_sets_TV = [1:2]; exp_sets_VR = [10:11]; session = 331; type = 'obs'; task = 'grasp & carry'; subject = 'C1';

% load in TV environment
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_TV)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_TV{fIdx,1} = fullfile(session_path, fName.name);
end
TV_Data_331 = prepData('files',filepath_TV);

% load in VR environment
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_VR)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_VR{fIdx,1} = fullfile(session_path, fName.name);
end
VR_Data_331 = prepData('files',filepath_VR);


% 333
session_path = 'T:\SessionData\BCI02\MotorExperiments\BCI02.data.00333'; %317; 331; 333
all_set_files = dir(fullfile(session_path, '*.Set*.bin'));
pat = ".Set" + digitsPattern(4) + ".";
exp_sets_TV = [1:3]; exp_sets_VR = [11:13]; session = 333; type = 'obs'; task = 'grasp & carry'; subject = 'C1';

% load in TV environment
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_TV)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_TV{fIdx,1} = fullfile(session_path, fName.name);
end
TV_Data_333 = prepData('files',filepath_TV);

% load in VR environment
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_VR)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_VR{fIdx,1} = fullfile(session_path, fName.name);
end
VR_Data_333 = prepData('files',filepath_VR);


%% load data - participant P4

session_path = 'T:\SessionData\CRS08\MotorExperiments\CRS08Lab.data.00064';%64; 82
all_set_files = dir(fullfile(session_path, '*.Set*.bin'));
pat = ".Set" + digitsPattern(4) + ".";
exp_sets_TV = [13:14]; exp_sets_VR = [5:6]; session = 64; type = 'obs'; task = 'grasp & carry'; subject = 'P4';
%exp_sets_TV = [1:2]; exp_sets_VR = [11:12]; session = 82; type = 'obs'; task = 'grasp & carry'; subject = 'P4';

% load in TV environment
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_TV)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_TV_P4_64{fIdx,1} = fullfile(session_path, fName.name);
end
TV_Data_64 = prepData('files',filepath_TV_P4_64);

% load in VR environment
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_VR)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_VR_P4_64{fIdx,1} = fullfile(session_path, fName.name);
end
VR_Data_64 = prepData('files',filepath_VR_P4_64);

% 82
session_path = 'T:\SessionData\CRS08\MotorExperiments\CRS08Lab.data.00082';%64; 82
all_set_files = dir(fullfile(session_path, '*.Set*.bin'));
pat = ".Set" + digitsPattern(4) + ".";
exp_sets_TV = [1:2]; exp_sets_VR = [11:12]; session = 82; type = 'obs'; task = 'grasp & carry'; subject = 'P4';

% load in TV environment
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_TV)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_TV_P4_82{fIdx,1} = fullfile(session_path, fName.name);
end
TV_Data_82 = prepData('files',filepath_TV_P4_82);

% load in VR environment
ct = 1; exp_set_files = {};
for fIdx = 1:length(all_set_files)
    fName = all_set_files(fIdx);
    set_str = extract(fName.name, pat);
    if ismember(str2double(set_str{1}(end-4:end-1)), exp_sets_VR)
        exp_set_files{ct} = fName;
        ct = ct + 1;       
    end
end
Data = cell(1, length(exp_set_files));
for fIdx = 1:length(Data)
    fName = exp_set_files{fIdx};
    % loads all file paths
    filepath_VR_P4_82{fIdx,1} = fullfile(session_path, fName.name);
end
VR_Data_82 = prepData('files',filepath_VR_P4_82);
%% 
% identify good channels
goodChannels_317 = identify_good_channels(VR_Data_317, TV_Data_317);
goodChannels_331 = identify_good_channels(VR_Data_331, TV_Data_331);
goodChannels_333 = identify_good_channels(VR_Data_333, TV_Data_333);
goodChannels_64 = identify_good_channels(VR_Data_64, TV_Data_64);
goodChannels_82 = identify_good_channels(VR_Data_82, TV_Data_82);

% encoding model for preferred direction of each channel
allM1 = [1:5:316 481:5:956 1121:5:1276]; % all M1 channels
DOF = [1:3]; norm = 0; % unnormalized coefficients to calculate DOM
[pre_dir_VR_317, accuracy_VR_317] = PrefDir_AT(VR_Data_317, allM1, DOF, norm); [pre_dir_TV_317, accuracy_TV_317] = PrefDir_AT(TV_Data_317, allM1, DOF, norm); 
[pre_dir_VR_331, accuracy_VR_331] = PrefDir_AT(VR_Data_331, allM1, DOF, norm); [pre_dir_TV_331, accuracy_TV_331] = PrefDir_AT(TV_Data_331, allM1, DOF, norm); 
[pre_dir_VR_333, accuracy_VR_333] = PrefDir_AT(VR_Data_333, allM1, DOF, norm); [pre_dir_TV_333, accuracy_TV_333] = PrefDir_AT(TV_Data_333, allM1, DOF, norm); 
[pre_dir_VR_64, accuracy_VR_64] = PrefDir_AT(VR_Data_64, allM1, DOF, norm); [pre_dir_TV_64, accuracy_TV_64] = PrefDir_AT(TV_Data_64, allM1, DOF, norm); 
[pre_dir_VR_82, accuracy_VR_82] = PrefDir_AT(VR_Data_82, allM1, DOF, norm); [pre_dir_TV_82, accuracy_TV_82] = PrefDir_AT(TV_Data_82, allM1, DOF, norm); 

% find depth of modulation (DOM)
x = 1; y = 2; z = 3;
DOM_VR_317_x = (pre_dir_VR_317(x,goodChannels_317)).^2; DOM_TV_317_x = (pre_dir_TV_317(x,goodChannels_317)).^2; % magnitude of coefficient from encoding model
DOM_VR_331_x = (pre_dir_VR_331(x,goodChannels_331)).^2; DOM_TV_331_x = (pre_dir_TV_331(x,goodChannels_331)).^2;
DOM_VR_333_x = (pre_dir_VR_333(x,goodChannels_333)).^2; DOM_TV_333_x = (pre_dir_TV_333(x,goodChannels_333)).^2;
DOM_VR_64_x = (pre_dir_VR_64(x,goodChannels_64)).^2; DOM_TV_64_x = (pre_dir_TV_64(x,goodChannels_64)).^2;
DOM_VR_82_x = (pre_dir_VR_82(x,goodChannels_82)).^2; DOM_TV_82_x = (pre_dir_TV_82(x,goodChannels_82)).^2;

DOM_VR_317_y = (pre_dir_VR_317(y,goodChannels_317)).^2; DOM_TV_317_y = (pre_dir_TV_317(y,goodChannels_317)).^2; % magnitude of coefficient from encoding model
DOM_VR_331_y = (pre_dir_VR_331(y,goodChannels_331)).^2; DOM_TV_331_y = (pre_dir_TV_331(y,goodChannels_331)).^2;
DOM_VR_333_y = (pre_dir_VR_333(y,goodChannels_333)).^2; DOM_TV_333_y = (pre_dir_TV_333(y,goodChannels_333)).^2;
DOM_VR_64_y = (pre_dir_VR_64(y,goodChannels_64)).^2; DOM_TV_64_y = (pre_dir_TV_64(y,goodChannels_64)).^2;
DOM_VR_82_y = (pre_dir_VR_82(y,goodChannels_82)).^2; DOM_TV_82_y = (pre_dir_TV_82(y,goodChannels_82)).^2;

DOM_VR_317_z = (pre_dir_VR_317(z,goodChannels_317)).^2; DOM_TV_317_z = (pre_dir_TV_317(z,goodChannels_317)).^2; % magnitude of coefficient from encoding model
DOM_VR_331_z = (pre_dir_VR_331(z,goodChannels_331)).^2; DOM_TV_331_z = (pre_dir_TV_331(z,goodChannels_331)).^2;
DOM_VR_333_z = (pre_dir_VR_333(z,goodChannels_333)).^2; DOM_TV_333_z = (pre_dir_TV_333(z,goodChannels_333)).^2;
DOM_VR_64_z = (pre_dir_VR_64(z,goodChannels_64)).^2; DOM_TV_64_z = (pre_dir_TV_64(z,goodChannels_64)).^2;
DOM_VR_82_z = (pre_dir_VR_82(z,goodChannels_82)).^2; DOM_TV_82_z = (pre_dir_TV_82(z,goodChannels_82)).^2;

% concatenate
DOM_VR_C1_x = [DOM_VR_317_x,DOM_VR_331_x,DOM_VR_333_x]; DOM_TV_C1_x = [DOM_TV_317_x,DOM_TV_331_x,DOM_TV_333_x];
DOM_VR_C1_y = [DOM_VR_317_y,DOM_VR_331_y,DOM_VR_333_y]; DOM_TV_C1_y = [DOM_TV_317_y,DOM_TV_331_y,DOM_TV_333_y];
DOM_VR_C1_z = [DOM_VR_317_z,DOM_VR_331_z,DOM_VR_333_z]; DOM_TV_C1_z = [DOM_TV_317_z,DOM_TV_331_z,DOM_TV_333_z];
DOM_VR_P4_x = [DOM_VR_64_x,DOM_VR_82_x]; DOM_TV_P4_x = [DOM_TV_64_x,DOM_TV_82_x];
DOM_VR_P4_y = [DOM_VR_64_y,DOM_VR_82_y]; DOM_TV_P4_y = [DOM_TV_64_y,DOM_TV_82_y];
DOM_VR_P4_z = [DOM_VR_64_z,DOM_VR_82_z]; DOM_TV_P4_z = [DOM_TV_64_z,DOM_TV_82_z];

% add to get DOM
DOM_VR_C1 = sum([DOM_VR_C1_x;DOM_VR_C1_y;DOM_VR_C1_z]);
DOM_TV_C1 = sum([DOM_TV_C1_x;DOM_TV_C1_y;DOM_TV_C1_z]);
DOM_VR_P4 = sum([DOM_VR_P4_x;DOM_VR_P4_y;DOM_VR_P4_z]);
DOM_TV_P4 = sum([DOM_TV_P4_x;DOM_TV_P4_y;DOM_TV_P4_z]);

% test signifiance
[~,pKS_DOM_C1] = kstest2(DOM_VR_C1, DOM_TV_C1);
[~,pKS_DOM_P4] = kstest2(DOM_VR_P4, DOM_TV_P4);

% calculate percent change
DOM_C1_change = ((DOM_VR_C1-DOM_TV_C1)./abs(DOM_TV_C1))*100; DOM_C1_change_med = median(DOM_C1_change)
DOM_P4_change = ((DOM_TV_P4-DOM_VR_P4)./abs(DOM_VR_P4))*100; DOM_P4_change_med = median(DOM_P4_change)

%% plot
cBlack = [0 0 0]; % color median line black
cVR = [0.9290 0.6940 0.1250]; % yellow
cTV = [0.3010 0.7450 0.9330]; % blue

figure; subplot(1,2,1)
Swarm(1, DOM_VR_C1, 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
Swarm(1.6, DOM_TV_C1, 'DistributionStyle','Violin','CenterColor',cBlack, 'Color',cTV);
ax = gca;ax.FontSize  = 14; ax.XAxis.TickLength = [0 0]; axis square; %axis([0.5 2 0 1.5]);
ax.XTick = [1 1.5]; ax.XTickLabel = [{'VR'} {'TV'}];
%ax.YTick = [0 0.25 0.5 0.75 1]; %ax.YTickLabel = [0 5 10];
xlabel('condition'); ylabel('depth of modulation')
title(['C1, p=0.46'])

subplot(1,2,2)
Swarm(1, DOM_VR_P4, 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cVR);
Swarm(1.6, DOM_TV_P4, 'DistributionStyle','Violin','CenterColor',cBlack, 'Color',cTV);
ax = gca;ax.FontSize  = 14; ax.XAxis.TickLength = [0 0]; axis square; %axis([0.5 2 0 1.5]);
ax.XTick = [1 1.5]; ax.XTickLabel = [{'VR'} {'TV'}];
%ax.YTick = [0 0.25 0.5 0.75 1]; %ax.YTickLabel = [0 5 10];
xlabel('condition'); ylabel('depth of modulation')
title(['P4, p=0.0007'])
set(gcf, 'Color', 'w')

%% scatter plots
figure; subplot(1,2,1); hold on
scatter(log(DOM_VR_C1),log(DOM_TV_C1),"filled")
plot(-5:1:2,-5:1:2,'k'); axis square
xlabel('VR'); ylabel('TV')
title('C1 - DOM')

subplot(1,2,2); hold on
scatter(log(DOM_VR_P4),log(DOM_TV_P4),'filled');
plot(-5:1:2,-5:1:2,'k'); axis square
xlabel('VR'); ylabel('TV')
title('P4 - DOM')
set(gcf, 'Color', 'w')

%% for paper
gray = [128 128 128]/255;
figure; hold on
scatter(log(DOM_VR_C1),log(DOM_TV_C1),'filled','MarkerFaceColor',gray)
plot(-10:1:2,-10:1:2,'k','LineStyle','--'); axis square
axis([log(0.001) log(6) log(0.001) log(6)]); ax = gca;
ax.YTick = [log([0.001 0.01 0.1 1])]; ax.YTickLabel = [0.001 0.01 0.1 1];
ax.XTick = [log([0.001 0.01 0.1 1])]; ax.XTickLabel = [0.001 0.01 0.1 1];
xlabel('VR Environment'); ylabel('TV Environment')
title('Depth of Modulation -C1')
set(gcf, 'Color', 'w'); 
%filename = sprintf('DoM_C1.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector');

figure; hold on
scatter(log(DOM_VR_P4),log(DOM_TV_P4),'filled','MarkerFaceColor',gray);
plot(-10:1:2,-10:1:2,'k','LineStyle','--'); axis square
axis([log(0.0001) log(6) log(0.0001) log(6)]); ax = gca;
ax.YTick = [log([0.0001 0.001 0.01 0.1 1])]; ax.YTickLabel = [0.0001 0.001 0.01 0.1 1];
ax.XTick = [log([0.0001 0.001 0.01 0.1 1])]; ax.XTickLabel = [0.0001 0.001 0.01 0.1 1];
xlabel('VR Environment'); ylabel('TV Environment')
title('Depth of Modulation -P4')
set(gcf, 'Color', 'w'); 
%filename = sprintf('DoM_P4.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector');
