set(gcf,'Position',[10 10 600 500])
sapn=[];
for i=1:30
figure(1)
m=all_data_sap(site,i);
sapn=[sapn,sum(m>0)];
title([num2str(site),' (',char(month(i)),')'])
% gif utilities
set(gcf,'color','w'); % set figure background to white
drawnow;
frame = getframe(1);
im = frame2im(frame);
[imind,cm] = rgb2ind(im,256);
outfile = ['C:\olddata\plot\sap\',num2str(site),'.gif'];
if i==1
imwrite(imind,cm,outfile,'gif','DelayTime',0.8);
else
imwrite(imind,cm,outfile,'gif','DelayTime',0.8,'writemode','append');
end
end
figure(1)
set(gcf,'Position',[10 10 600 200])
plot(1:30,sapn)
xlabel('month')
ylabel('SAP')
title([num2str(site),' (',char(month(i)),')'])
saveas(figure(1),['C://olddata//plot/sap/sapevo',num2str(site),char(month(i)),'.jpg'])