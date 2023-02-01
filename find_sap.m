function [m]=find_sap(site,t0,tt)
path="D://spyder-tensor//mutation_aa//all//.xlsx";
pathnew=insertAfter(path,"all//",string(site));
ssite=readmatrix(pathnew);
ssite(:,1)=[];
ssite(1,:)=[];
m=ssite(t0:tt,:);
m=sum(m'>0);
end

