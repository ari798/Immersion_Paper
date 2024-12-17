function [obj,TS,factor_mask,fullmask,Measurement,Kinematics,TaskStateMasks,idx] = PrepDataForTrain(obj,Data,varargin)
% Decoders.GraspStateDecoder.PrepDataForTrain

% call default PrepDataForTrain
[obj,Measurement,Kinematics,TaskStateMasks,idx] = PrepDataForTrain@Decoders.Decoder(obj,Data,varargin);

[TSFULL,factor_mask,fullmask,state_order] = obj.create_trial_structure_click({Data},'FR');
TS = obj.grasp_carry_process(Data,TSFULL{1},state_order);
TS = obj.replace_bepoch(TS,'b');
% TS = obj.NaNout_emptyepoch(TS);
if ~isempty(obj.PreTrainMask)
    obj.PreTrainMask = obj.PreTrainMask & fullmask;
else
    obj.PreTrainMask = fullmask;
end

end

