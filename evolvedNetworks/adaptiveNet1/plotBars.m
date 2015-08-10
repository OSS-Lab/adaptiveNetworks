%% input and output
L=LG0000/1000;
T1=TG00001/10; T0=TG00000/10;

%% kinase
totalG0401=2.20347691230698;
freeG0401=G0401+G0000_G0401i00;
compG0401=G0401_TG00000i00+G0000_G0401_TG00000i00;
titrG0401=totalG0401-freeG0401-compG0401;

freeK=(freeG0401)/(totalG0401);
compK=(compG0401)/(totalG0401);
titrK=(titrG0401)/(totalG0401);

%% phosphatase
totalG0802=10;
freeG0802=G080200;
compG0802=G080200_TG00001i00+G0000_G080200_TG00001i01+G0000_G080200_TG00001i00;
titrG0802=totalG0802-freeG0802-compG0802;

freeP=freeG0802/totalG0802;
compP=compG0802/totalG0802;
titrP=titrG0802/totalG0802;

%% set up plotting values

inK=[freeK titrK compK];
inP=[freeP titrP compP];

wholeway=size(LG0000,1);
meanTitrK=sum(titrK)/wholeway
meanTitrP=sum(titrP)/wholeway

meanCompK=sum(compK)/wholeway
meanCompP=sum(compP)/wholeway
%% set the colour map, from colour blind pallete
%mycolor=[0 0.6 0.5;0.35 0.7 0.9;0.8 0.4 0];
%mycolor=[31 120 180;166 206 227;178 223 138]/255;
mycolor=[102 194 165;252 141 98;141 160 203]/255;
%mycolor=[178 223 138;31 120 180;166 206 227]/255;

%% plot the ratios
figure();
colormap(mycolor);

subplot(3,1,1)
B0=semilogy(1:length(L),L,'LineWidth',4);
% set(get(B1(1),'Children'),'facea',0.25);
% set(get(B1(2),'Children'),'facea',0.25);
% set(get(B1(3),'Children'),'facea',0.25);
axis([0 wholeway 0.0001 1]);
ax = gca;
ax.XTick = [0,wholeway/2,wholeway];
ax.YTick = [0.0001,0.001,0.01,0.1,1];
ax.XTickLabel = {'0','0.5','1'};
%ax.YTickLabel = {'1e','0.5','1'};
ax.YLabel.String='[L]';
set(gca, 'FontName', 'Arial','FontSize', 16);



subplot(3,1,2)
B1=bar(inK,'stacked','EdgeColor','none','LineStyle','none');
% set(get(B1(1),'Children'),'facea',0.25);
% set(get(B1(2),'Children'),'facea',0.25);
% set(get(B1(3),'Children'),'facea',0.25);
axis([0 wholeway 0 1]);
ax = gca;
ax.XTick = [0,wholeway/2,wholeway];
ax.YTick = [0,0.5,1];
ax.XTickLabel = {'0','0.5','1'};
ax.YTickLabel = {'0','0.5','1'};
ax.YLabel.String='[K]';
set(gca, 'FontName', 'Arial','FontSize', 16);


hold on;
plot(1:length(L),T1,'k','LineWidth',0.5);
hold off;

subplot(3,1,3)
B3=bar(inP,'stacked','EdgeColor','none','LineStyle','none');
axis([0 wholeway 0 1]);
ax = gca;
ax.XTick = [0,wholeway/2,wholeway];
ax.YTick = [0,0.5,1];
ax.XTickLabel = {'0','0.5','1'};
ax.YTickLabel = {'0','0.5','1'};
ax.XLabel.String='t';
ax.YLabel.String='[P]';
set(gca, 'FontName', 'Arial','FontSize', 16);

hold on;
plot(1:length(L),T1,'k','LineWidth',0.5);
hold off;

