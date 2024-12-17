% function used to obtain a list of good channels across two datasets
% good defined as having a FR of greater than 3.5 Hz in 1 dataset

function [goodChannels] = identify_good_channels(VR_Data, TV_Data)

% OUTPUTS:
%   goodChannels - list of good channels identified using both datasets

% INPUTS:
%   VR_Data - raw VR data
%   TV_Data - raw TV data


    % pull out motor neural channels
    restrictM1 = zeros(1,1280);
    allM1 = [1:5:316 481:5:956 1121:5:1276];
    restrictM1(allM1) = ones(1,192);

    % for VR
    SpikeCountsVR_unsmoothed = double(VR_Data.SpikeCount(:,logical(restrictM1))); % get unsmoothed VR data
    avgFR_VR = nanmean(SpikeCountsVR_unsmoothed)./.02; % average firing rate across session
    badChanVR = find(avgFR_VR<3.5); % remove channels below 3.5 Hz
    % for TV
    SpikeCountsTV_unsmoothed = double(TV_Data.SpikeCount(:,logical(restrictM1)));
    avgFR_TV = nanmean(SpikeCountsTV_unsmoothed)./.02; % average firing rate across session
    badChanTV = find(avgFR_TV<3.5); % remove channels below 3.5 Hz

    badChans = ismember(badChanVR, badChanTV); % compare list of bad channels - only remove if channel identified in both bad
    badChannels = badChanVR(badChans);

    % make list of good channels
    channelList = 1:1:192;
    goodChannelsIdx = ~ismember(channelList,badChannels);
    goodChannels = nonzeros(channelList.*goodChannelsIdx);

end