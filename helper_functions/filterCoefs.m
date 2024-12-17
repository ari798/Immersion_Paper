function [Spike_filter,Kinem_filter] = filterCoefs
%Spike_filter = [0.0932 0.0885 0.0841 0.0799 0.0759 0.0721 0.0685 0.0651 0.0618 0.0587 0.0558 0.0530 0.0503 0.0478 0.0454]'; %from NHP lab - LPF with -3dB cutoff ~1Hz, weighted to more recent values
Spike_filter = [.0636 .0615 .0594 .0574 .0555 .0536 .0518 .0501 .0484 .0467 .0452 .0436 .0422 .0408 .0394 .0381 .0368 .0355 .0343 .0331 .0321 .0310]'; %JW: new values for 50 Hz sampling
%Kinem_filter = [0.0588 0.0588 0.0588 0.0588 0.0588 0.0588 0.0588 0.0588 0.0588 0.0588 0.0588 0.0588 0.0588 0.0588 0.0588 0.0588 0.0588]'; %from NHP lab - flat LPF window with -3dB cutoff ~1Hz
Kinem_filter = (1/25).*ones(25,1); % for 50 Hz sampling
end