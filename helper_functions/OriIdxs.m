function idxs = OriIdxs(hand,len)
%returns the indexes of the trans domain, if input hand is specificed ("r" or "l") then
%only resturns indexes of grasp for that hand 
if ~exist('len','var') || isempty(len)
    len=inf;
end

r = [4:6];
l = [19:21];

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