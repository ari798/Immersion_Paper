%% depthOfModulation.m
% uses observation data from Participants C1 and P4 to calculate depth of modulation for each channel
% generates Supplemental Figure 2
%% load in data
C1_317_TV = load("C1_session317_TV_observation.mat"); C1_317_VR = load("C1_session317_VR_observation.mat");
C1_331_TV = load("C1_session331_TV_observation.mat"); C1_331_VR = load("C1_session331_VR_observation.mat");
C1_333_TV = load("C1_session333_TV_observation.mat"); C1_333_VR = load("C1_session333_VR_observation.mat");
P4_64_TV = load("P4_session64_TV_observation.mat"); P4_64_VR = load("P4_session64_VR_observation.mat");
P4_82_TV = load("P4_session82_TV_observation.mat"); P4_82_VR = load("P4_session82_VR_observation.mat");
%% 
% identify good channels
goodChannels_317 = identify_good_channels(C1_317_VR.VR_Data, C1_317_TV.TV_Data);
goodChannels_331 = identify_good_channels(C1_331_VR.VR_Data, C1_331_TV.TV_Data);
goodChannels_333 = identify_good_channels(C1_333_VR.VR_Data, C1_333_TV.TV_Data);
goodChannels_64 = identify_good_channels(P4_64_VR.VR_Data, P4_64_TV.TV_Data);
goodChannels_82 = identify_good_channels(P4_82_VR.VR_Data, P4_82_TV.TV_Data);

% encoding model for preferred direction of each channel
allM1 = [1:5:316 481:5:956 1121:5:1276]; % all M1 channels
DOF = [1:3]; norm = 0; % unnormalized coefficients to calculate DOM
[pre_dir_VR_317, accuracy_VR_317] = PrefDir_AT(C1_317_VR.VR_Data, allM1, DOF, norm); [pre_dir_TV_317, accuracy_TV_317] = PrefDir_AT(C1_317_TV.TV_Data, allM1, DOF, norm); 
[pre_dir_VR_331, accuracy_VR_331] = PrefDir_AT(C1_331_VR.VR_Data, allM1, DOF, norm); [pre_dir_TV_331, accuracy_TV_331] = PrefDir_AT(C1_331_TV.TV_Data, allM1, DOF, norm); 
[pre_dir_VR_333, accuracy_VR_333] = PrefDir_AT(C1_333_VR.VR_Data, allM1, DOF, norm); [pre_dir_TV_333, accuracy_TV_333] = PrefDir_AT(C1_333_TV.TV_Data, allM1, DOF, norm); 
[pre_dir_VR_64, accuracy_VR_64] = PrefDir_AT(P4_64_VR.VR_Data, allM1, DOF, norm); [pre_dir_TV_64, accuracy_TV_64] = PrefDir_AT(P4_64_TV.TV_Data, allM1, DOF, norm); 
[pre_dir_VR_82, accuracy_VR_82] = PrefDir_AT(P4_82_VR.VR_Data, allM1, DOF, norm); [pre_dir_TV_82, accuracy_TV_82] = PrefDir_AT(P4_82_TV.TV_Data, allM1, DOF, norm); 

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

%% generate scatter plot - Supplemental Figure 2
gray = [128 128 128]/255;
figure; subplot(1,2,1); hold on;
scatter(log(DOM_VR_C1),log(DOM_TV_C1),'filled','MarkerFaceColor',gray)
plot(-10:1:2,-10:1:2,'k','LineStyle','--'); axis square
axis([log(0.001) log(6) log(0.001) log(6)]); ax = gca;
ax.YTick = [log([0.001 0.01 0.1 1])]; ax.YTickLabel = [0.001 0.01 0.1 1];
ax.XTick = [log([0.001 0.01 0.1 1])]; ax.XTickLabel = [0.001 0.01 0.1 1];
xlabel('VR Environment'); ylabel('TV Environment')
title('Depth of Modulation -C1')
set(gcf, 'Color', 'w'); 

subplot(1,2,2); hold on
scatter(log(DOM_VR_P4),log(DOM_TV_P4),'filled','MarkerFaceColor',gray);
plot(-10:1:2,-10:1:2,'k','LineStyle','--'); axis square
axis([log(0.0001) log(6) log(0.0001) log(6)]); ax = gca;
ax.YTick = [log([0.0001 0.001 0.01 0.1 1])]; ax.YTickLabel = [0.0001 0.001 0.01 0.1 1];
ax.XTick = [log([0.0001 0.001 0.01 0.1 1])]; ax.XTickLabel = [0.0001 0.001 0.01 0.1 1];
xlabel('VR Environment'); ylabel('TV Environment')
title('Depth of Modulation -P4')
set(gcf, 'Color', 'w'); 
