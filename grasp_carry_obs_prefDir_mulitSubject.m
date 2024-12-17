%% load in data
C1_317_TV = load("C1_session317_TV_observation.mat"); C1_317_VR = load("C1_session317_VR_observation.mat");
C1_331_TV = load("C1_session331_TV_observation.mat"); C1_331_VR = load("C1_session331_VR_observation.mat");
C1_333_TV = load("C1_session333_TV_observation.mat"); C1_333_VR = load("C1_session333_VR_observation.mat");
P4_64_TV = load("P4_session64_TV_observation.mat"); P4_64_VR = load("P4_session64_VR_observation.mat");
P4_82_TV = load("P4_session82_TV_observation.mat"); P4_82_VR = load("P4_session82_VR_observation.mat");

%% identify good channels

goodChannels = identify_good_channels(VR_Data, TV_Data);


%% preferred direction - find angle between vectors

allM1 = [1:5:316 481:5:956 1121:5:1276]; % all M1 channels
DOF = [1:3];
[pre_dir_VR_1, accuracy_VR_1] = PrefDir_AT(VR_Data_1, allM1, DOF); 
[pre_dir_VR_2, accuracy_VR_2] = PrefDir_AT(VR_Data_2, allM1, DOF);
[pre_dir_TV_1, accuracy_TV_1] = PrefDir_AT(TV_Data_1, allM1, DOF);
[pre_dir_TV_2, accuracy_TV_2] = PrefDir_AT(TV_Data_2, allM1, DOF);


%% calculate shift in preferred direction
for c = 1:length(goodChannels)
    ch = goodChannels(c);
    %VR/VR
    u = pre_dir_VR_1(:,ch); v = pre_dir_VR_2(:,ch);
    CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1);  
    ThetaInDegrees = real(acosd(CosTheta));
    angleShift_VRVR(c) = ThetaInDegrees;
    %TV/TV
    u = pre_dir_TV_1(:,ch); v = pre_dir_TV_2(:,ch);
    CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1); 
    ThetaInDegrees = real(acosd(CosTheta));
    angleShift_TVTV(c) = ThetaInDegrees;
end


% for split data
for c = 1:length(goodChannels)
    ch = goodChannels(c);
    %VR1/TV1
    u = pre_dir_VR_1(:,ch); v = pre_dir_TV_1(:,ch);
    CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1);   
    ThetaInDegrees = real(acosd(CosTheta));
    angleShift_VR1TV1(c) = ThetaInDegrees;
    % VR2 / TV2
    u = pre_dir_VR_2(:,ch); v = pre_dir_TV_2(:,ch);
    CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1);   
    ThetaInDegrees = real(acosd(CosTheta));
    angleShift_VR2TV2(c) = ThetaInDegrees;

    % VR1 / TV2
    % u = pre_dir_VR_1(:,ch); v = pre_dir_TV_2(:,ch);
    % CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1); 
    % ThetaInDegrees = real(acosd(CosTheta));
    % angleShift_VR1TV2(c) = ThetaInDegrees;
    % %VR2/TV1
    % u = pre_dir_VR_2(:,ch); v = pre_dir_TV_1(:,ch);
    % CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1);   
    % ThetaInDegrees = real(acosd(CosTheta));
    % angleShift_VR2TV1(c) = ThetaInDegrees;

end

% shuffle channel identify for 1 of the group and recalculate shift
shuffleIdx = randperm(length(goodChannels))';
shuffledGoodChannels = goodChannels(shuffleIdx);

for c = 1:length(shuffledGoodChannels)
    ch = goodChannels(c);
    ch_shuffle = shuffledGoodChannels(c);
    %VR/VR
    u = pre_dir_VR_1(:,ch); v = pre_dir_VR_2(:,ch_shuffle);
    CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1);  
    ThetaInDegrees = real(acosd(CosTheta));
    angleShift_VRVR_shuffle(c) = ThetaInDegrees;
    %TV/TV
    u = pre_dir_TV_1(:,ch); v = pre_dir_TV_2(:,ch_shuffle);
    CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1);   
    ThetaInDegrees = real(acosd(CosTheta));
    angleShift_TVTV_shuffle(c) = ThetaInDegrees;
end

% for split VR / TV data
for c = 1:length(shuffledGoodChannels)
    ch = goodChannels(c);
    ch_shuffle = shuffledGoodChannels(c);
    %VR1/TV1
    u = pre_dir_VR_1(:,ch); v = pre_dir_TV_1(:,ch_shuffle);
    CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1);   
    ThetaInDegrees = real(acosd(CosTheta));
    angleShift_VR1TV1_shuffle(c) = ThetaInDegrees;
    % VR2 / TV2
    u = pre_dir_VR_2(:,ch); v = pre_dir_TV_2(:,ch_shuffle);
    CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1);  
    ThetaInDegrees = real(acosd(CosTheta));
    angleShift_VR2TV2_shuffle(c) = ThetaInDegrees;

    % VR1 / TV2
    % u = pre_dir_VR_1(:,ch); v = pre_dir_TV_2(:,ch_shuffle);
    % CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1);   
    % ThetaInDegrees = real(acosd(CosTheta));
    % angleShift_VR1TV2_shuffle(c) = ThetaInDegrees;
    % %VR2/TV1
    % u = pre_dir_VR_2(:,ch); v = pre_dir_TV_1(:,ch_shuffle);
    % CosTheta = max(min(dot(u,v)/(norm(u)*norm(v)),1),-1);   
    % ThetaInDegrees = real(acosd(CosTheta));
    % angleShift_VR2TV1_shuffle(c) = ThetaInDegrees;

end


%% violin plots of data
cBlack = [0 0 0]; % color median line black
cWithin = [120 94 240]/255; % purple
cAcross = [220 38 127]/255; % pink
cShuffle = [254 97 0]/255; % orange

figure; hold on
Swarm(1, [angleShift_VRVR angleShift_TVTV], 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cWithin);
Swarm(2, [angleShift_VR1TV1 angleShift_VR2TV2], 'DistributionStyle','Violin','CenterColor',cBlack, 'Color',cAcross);
Swarm(3, [angleShift_VR1TV1_shuffle angleShift_VR2TV2_shuffle], 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cShuffle);
ax = gca;ax.FontSize  = 14; ax.XAxis.TickLength = [0 0]; axis square; %axis([0.5 3.5 0 280]);
ax.XTick = [1 2 3]; ax.XTickLabel = [{'within condition'} {'across condition'} {'shuffled across condition'}];
%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];
xlabel('condition'); ylabel('change in preferred direction (degrees)')
title(['change in preferred direction - observation ', subject])
set(gcf, 'Color', 'w')

%% load previous data and concatenate - C1
% sess317 = load('C1_shiftPrefDirAngle_sess317.mat');
% sess331 = load('C1_shiftPrefDirAngle_sess331.mat');
% sess333 = load('C1_shiftPrefDirAngle_sess333.mat');

angleShift_VRVRTVTV = [sess317.angleShift_VRVR sess331.angleShift_VRVR sess333.angleShift_VRVR sess317.angleShift_TVTV sess331.angleShift_TVTV sess333.angleShift_TVTV];
angleShift_VR1TV1VR2TV2 = [sess317.angleShift_VR1TV1 sess331.angleShift_VR1TV1 sess333.angleShift_VR1TV1 sess317.angleShift_VR2TV2 sess331.angleShift_VR2TV2 sess333.angleShift_VR2TV2];
angleShift_VR1TV1VR2TV2_shuffle = [sess317.angleShift_VR1TV1_shuffle sess331.angleShift_VR1TV1_shuffle sess333.angleShift_VR1TV1_shuffle ...
                                   sess317.angleShift_VR2TV2_shuffle sess331.angleShift_VR2TV2_shuffle sess333.angleShift_VR2TV2_shuffle];

figure; hold on
Swarm(1, [angleShift_VRVRTVTV], 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cWithin);
Swarm(2, [angleShift_VR1TV1VR2TV2], 'DistributionStyle','Violin','CenterColor',cBlack, 'Color',cAcross);
Swarm(3, [angleShift_VR1TV1VR2TV2_shuffle], 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cShuffle);
% plot([1,2,3], [median([sess317.angleShift_VRVR sess317.angleShift_TVTV]), median([sess317.angleShift_VR1TV1 sess317.angleShift_VR2TV2]), median([sess317.angleShift_VR1TV1_shuffle sess317.angleShift_VR2TV2_shuffle])], ...
%     'Color', 'k', 'LineStyle','-', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
% plot([1,2,3], [median([sess331.angleShift_VRVR sess331.angleShift_TVTV]), median([sess331.angleShift_VR1TV1 sess331.angleShift_VR2TV2]), median([sess331.angleShift_VR1TV1_shuffle sess331.angleShift_VR2TV2_shuffle])], ...
%     'Color', 'k', 'LineStyle','-', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
% plot([1,2,3], [median([sess333.angleShift_VRVR sess333.angleShift_TVTV]), median([sess333.angleShift_VR1TV1 sess333.angleShift_VR2TV2]), median([sess333.angleShift_VR1TV1_shuffle sess333.angleShift_VR2TV2_shuffle])], ...
%     'Color', 'k', 'LineStyle','-', 'Marker','o', 'MarkerFaceColor','k', 'MarkerEdgeColor','none')
ax = gca;ax.FontSize  = 14; ax.XAxis.TickLength = [0 0]; axis square; axis([0.5 3.5 0 205]);
ax.XTick = [1 2 3]; ax.XTickLabel = [{'within condition'} {'across condition'} {'shuffled across condition'}];
%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];
xlabel('condition'); ylabel('change in preferred direction (degrees)')
title('change in preferred direction - observation - C1 - all sessions')
set(gcf, 'Color', 'w')

%filename = sprintf('prefDir_C1.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector');

% significance testing
[~, angleShift.p_within_across] = kstest2(angleShift_VRVRTVTV,angleShift_VR1TV1VR2TV2);
[~, angleShift.p_across_shuffled] = kstest2(angleShift_VR1TV1VR2TV2,angleShift_VR1TV1VR2TV2_shuffle);

% significance testing - rank sum
[angleShift.p_within_across_rankSum] = ranksum(angleShift_VRVRTVTV,angleShift_VR1TV1VR2TV2);
[angleShift.p_across_shuffled_rankSum] = ranksum(angleShift_VR1TV1VR2TV2,angleShift_VR1TV1VR2TV2_shuffle);

% medians
angleShift.m_within = median(angleShift_VRVRTVTV);
angleShift.m_across = median(angleShift_VR1TV1VR2TV2);
angleShift.m_shuffle = median(angleShift_VR1TV1VR2TV2_shuffle);
% medians
angleShift.m_within = median(angleShift_VRVRTVTV);
angleShift.m_across = median(angleShift_VR1TV1VR2TV2);
angleShift.m_shuffle = median(angleShift_VR1TV1VR2TV2_shuffle);
%% load previous data and concatenate - P4
sess64 = load('P4_shiftPrefDirAngle_sess64.mat');
sess82 = load('P4_shiftPrefDirAngle_sess82.mat');

angleShift_VRVRTVTV = [sess64.angleShift_VRVR sess82.angleShift_VRVR sess64.angleShift_TVTV sess82.angleShift_TVTV];
angleShift_VR1TV1VR2TV2 = [sess64.angleShift_VR1TV1 sess82.angleShift_VR1TV1 sess64.angleShift_VR2TV2 sess82.angleShift_VR2TV2];
angleShift_VR1TV1VR2TV2_shuffle = [sess64.angleShift_VR1TV1_shuffle sess82.angleShift_VR1TV1_shuffle sess64.angleShift_VR2TV2_shuffle sess82.angleShift_VR2TV2_shuffle];

figure; hold on
Swarm(1, [angleShift_VRVRTVTV], 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cWithin);
Swarm(2, [angleShift_VR1TV1VR2TV2], 'DistributionStyle','Violin','CenterColor',cBlack, 'Color',cAcross);
Swarm(3, [angleShift_VR1TV1VR2TV2_shuffle], 'DistributionStyle','Violin','CenterColor',cBlack,'Color',cShuffle);
ax = gca;ax.FontSize  = 14; ax.XAxis.TickLength = [0 0]; axis square; axis([0.5 3.5 0 205]);
ax.XTick = [1 2 3]; ax.XTickLabel = [{'within condition'} {'across condition'} {'shuffled across condition'}];
%ax.YTick = [0 5 10];ax.YTickLabel = [0 5 10];
xlabel('condition'); ylabel('change in preferred direction (degrees)')
title('change in preferred direction - observation - P4 - all sessions')
set(gcf, 'Color', 'w')

%filename = sprintf('prefDir_P4.eps', session); exportgraphics(ax,filename,'BackgroundColor','none','ContentType','vector');

% significance testing
[~, angleShift.p_within_across] = kstest2(angleShift_VRVRTVTV,angleShift_VR1TV1VR2TV2);
[~, angleShift.p_across_shuffled] = kstest2(angleShift_VR1TV1VR2TV2,angleShift_VR1TV1VR2TV2_shuffle);

% significance testing - rank sum
[angleShift.p_within_across_rankSum] = ranksum(angleShift_VRVRTVTV,angleShift_VR1TV1VR2TV2);
[angleShift.p_across_shuffled_rankSum] = ranksum(angleShift_VR1TV1VR2TV2,angleShift_VR1TV1VR2TV2_shuffle);

% medians
angleShift.m_within = median(angleShift_VRVRTVTV);
angleShift.m_across = median(angleShift_VR1TV1VR2TV2);
angleShift.m_shuffle = median(angleShift_VR1TV1VR2TV2_shuffle);

%% plot together normal and shifted
nbins = 20;
figure; 
subplot(2,3,1); hold on
histogram(angleShift_VRVR,nbins,'FaceColor','b',FaceAlpha=0.2); xline(median(angleShift_VRVR), 'LineWidth',2, 'Color','b')
histogram(angleShift_VRVR_shuffle,nbins,'FaceColor','r',FaceAlpha=0.2); xline(median(angleShift_VRVR_shuffle), 'LineWidth',2, 'Color','r')
title('VR/VR')
xlabel('angle (degrees)'); ylabel('count'); xlim([0 180])

subplot(2,3,4); hold on
histogram(angleShift_TVTV,nbins,'FaceColor','b',FaceAlpha=0.2); xline(median(angleShift_TVTV), 'LineWidth',2, 'Color','b')
histogram(angleShift_TVTV_shuffle,nbins,'FaceColor','r',FaceAlpha=0.2); xline(median(angleShift_TVTV_shuffle), 'LineWidth',2, 'Color','r')
title('TV/TV'); ylabel('count'); xlim([0 180])

subplot(2,3,3); hold on
histogram(angleShift_VR1TV1,nbins,'FaceColor','b',FaceAlpha=0.2); xline(median(angleShift_VR1TV1), 'LineWidth',2, 'Color','b')
histogram(angleShift_VR1TV1_shuffle,nbins,'FaceColor','r',FaceAlpha=0.2); xline(median(angleShift_VR1TV1_shuffle), 'LineWidth',2, 'Color','r')
title('VR1 / TV1')
xlabel('angle (degrees)'); ylabel('count'); xlim([0 180])

subplot(2,3,2); hold on
histogram(angleShift_VR1TV2,nbins,'FaceColor','b',FaceAlpha=0.2); xline(median(angleShift_VR1TV2), 'LineWidth',2, 'Color','b')
histogram(angleShift_VR1TV2_shuffle,nbins,'FaceColor','r',FaceAlpha=0.2); xline(median(angleShift_VR1TV2_shuffle), 'LineWidth',2, 'Color','r')
title('VR1 / TV2')
xlabel('angle (degrees)'); ylabel('count'); xlim([0 180])

subplot(2,3,5); hold on
histogram(angleShift_VR2TV1,nbins,'FaceColor','b',FaceAlpha=0.2); xline(median(angleShift_VR2TV1), 'LineWidth',2, 'Color','b')
histogram(angleShift_VR2TV1_shuffle,nbins,'FaceColor','r',FaceAlpha=0.2); xline(median(angleShift_VR2TV1_shuffle), 'LineWidth',2, 'Color','r')
title('VR2 / TV1')
xlabel('angle (degrees)'); ylabel('count'); xlim([0 180])

subplot(2,3,6); hold on
histogram(angleShift_VR2TV2,nbins,'FaceColor','b',FaceAlpha=0.2); xline(median(angleShift_VR2TV2), 'LineWidth',2, 'Color','b')
histogram(angleShift_VR2TV2_shuffle,nbins,'FaceColor','r',FaceAlpha=0.2); xline(median(angleShift_VR2TV2_shuffle), 'LineWidth',2, 'Color','r')
title('VR2 / TV2')

xlabel('angle (degrees)'); ylabel('count'); xlim([0 180])
sgtitle(['shift in preferred direction ',task, ' - session ', num2str(session), ' ', type,' ',subject]); set(gcf, 'Color', 'w')

%% calcaulate median values
angle_shift_medians.VRVR = median(angleShift_VRVR);
angle_shift_medians.TVTV = median(angleShift_TVTV);
angle_shift_medians.VR1TV1 = median(angleShift_VR1TV1);
angle_shift_medians.VR2TV2 = median(angleShift_VR2TV2);
%angle_shift_medians.VR1TV2 = median(angleShift_VR1TV2);
%angle_shift_medians.VR2TV1 = median(angleShift_VR2TV1);

angle_shift_medians.VRVR_shuffle = median(angleShift_VRVR_shuffle);
angle_shift_medians.TVTV_shuffle = median(angleShift_TVTV_shuffle);
angle_shift_medians.VR1TV1_shuffle = median(angleShift_VR1TV1_shuffle);
angle_shift_medians.VR2TV2_shuffle = median(angleShift_VR2TV2_shuffle);
%angle_shift_medians.VR1TV2_shuffle = median(angleShift_VR1TV2_shuffle);
%angle_shift_medians.VR2TV1_shuffle = median(angleShift_VR2TV1_shuffle);
