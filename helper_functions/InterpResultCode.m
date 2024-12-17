function out = InterpResultCode(in)
%result code interpretation for HST
%
%take vector of ints and conver to struct of logicals for each of the flags
%
% //ResultCodes: (Should be arranged as binary style flags to be added together)
% #define NoResult					-1 //not to be combined with other codes
% #define SuccessfulTrial           1
% #define BadTrial					2
% #define ManualProceed				4
% #define ManualFail				8
%
% out = structure with vector of logicals for each flag

out = struct();

out.NoResult = in==-1;

in = uint32(in);
out.SuccessfulTrial = bitget(in,1);
out.BadTrial =        bitget(in,2);
out.ManualProceed =   bitget(in,3); %%%WARNING: Prepdata may not be passing this in correctly!
out.ManualFail =      bitget(in,4);