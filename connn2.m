function [r takethisbox]=connn2(NR)

[Q,W]=hist(NR(:,4));
q1=max(Q);
ind=find(Q==q1);

if length(ind)==1
    MP=W(ind);
    binsize=W(2)-W(1);
    container=[MP-(binsize/2) MP+(binsize/2)+1];
    [r takethisbox]=takeothers(NR,container,2);
    
else
    r=[];
    takethisbox=[]
end
end

