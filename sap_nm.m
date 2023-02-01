function [sap,newsite]=sap_nm(pos,tt)
n=size(pos,2);
newsite=[];
all_sap=zeros([tt,n]);
sap=[];
for i=1:n
m=find_sap(pos(i),1,tt);
all_sap(:,i)=m';
w=oringnal_data(pos(i));
%w=max(w(:,tt));
w=sum(w(:,tt));
newsite=[newsite,w];
%sap=[sap,find_sapall(pos(i),1,tt)];
end
sap=all_sap(tt,:);
end