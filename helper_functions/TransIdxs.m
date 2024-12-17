function idxs = TransIdxs(hand,len)
%returns the indexes of the trans domain, if input hand is specificed ("r" or "l") then
%only resturns indexes of grasp for that hand 
if ~exist('len','var') || isempty(len)
    len=inf;
end

r = [1:3];
l = [16:18];

if ~exist('hand','var') || isempty(hand)
    idxs = [r l];
elseif hand=='r' || hand=='R'
    idxs = r;
elseif hand=='l' || hand=='L'
    idxs = l;
else
    idxs = [];
end
    
idxs(idxs>len)=[];