%% input and output
L=LG0000/1000; T1=TG00001/1000; T0=TG00000/1000;

%% process the data
L = L([3500:4500 7000:8000 10500:11500  84000:86000 120500:121500 123500:end]);
T1 = T1([3500:4500 7000:8000 10500:11500  84000:86000 120500:121500 123500:end]);
T0 = T0([3500:4500 7000:8000 10500:11500  84000:86000 120500:121500 123500:end]);
wholeway=length(L);

%% kinase
totalG0401=32.8192787251147;
freeG0401=G0401+G0000_G0401i00;
compG0401=G0401_TG00000i00+G0000_G0401_TG00000i00;
titrG0401=totalG0401-freeG0401-compG0401;

freeK1=(freeG0401)/(totalG0401);
compK1=(compG0401)/(totalG0401);
titrK1=(titrG0401)/(totalG0401);

freeK1=freeK1([3500:4500 7000:8000 10500:11500  84000:86000 120500:121500 123500:end]);
compK1=compK1([3500:4500 7000:8000 10500:11500  84000:86000 120500:121500 123500:end]);
titrK1=titrK1([3500:4500 7000:8000 10500:11500  84000:86000 120500:121500 123500:end]);


totalG0976=1.02046391942289;
freeG0976=G0976R+G0976T+G0000_G0976Ri00+G0000_G0976Ti00;
compG0976=G0976R_TG00000i00+G0976T_TG00000i00+G0000_G0976R_TG00000i00+G0000_G0976T_TG00000i00;
titrG0976=totalG0976-freeG0976-compG0976;


freeK2=(freeG0976)/(totalG0976);
compK2=(compG0976)/(totalG0976);
titrK2=(titrG0976)/(totalG0976);

freeK2=freeK2([3500:4500 7000:8000 10500:11500  84000:86000 120500:121500 123500:end]);
compK2=compK2([3500:4500 7000:8000 10500:11500  84000:86000 120500:121500 123500:end]);
titrK2=titrK2([3500:4500 7000:8000 10500:11500  84000:86000 120500:121500 123500:end]);

%% phosphatase
totalG0976=1.02046391942289;
freeG0976=G0976R+G0976T;
compG0976=G0976R_TG00001i01+G0976T_TG00001i01;
titrG0976=totalG0976-freeG0976-compG0976;

freeP=freeG0976/totalG0976;
compP=compG0976/totalG0976;
titrP=titrG0976/totalG0976;

freeP=freeP([3500:4500 7000:8000 10500:11500  84000:86000 120500:121500 123500:end]);
compP=compP([3500:4500 7000:8000 10500:11500  84000:86000 120500:121500 123500:end]);
titrP=titrP([3500:4500 7000:8000 10500:11500  84000:86000 120500:121500 123500:end]);
%% set up plotting values

inK1=[freeK1 titrK1 compK1];
inK2=[freeK2 titrK2 compK2];
inP=[freeP titrP compP];

%wholeway=size(LG0000,1);
meanTitrK1=sum(titrK1)/wholeway
meanTitrK2=sum(titrK2)/wholeway
meanTitrP=sum(titrP)/wholeway

meanCompK1=sum(compK1)/wholeway
meanCompK2=sum(compK2)/wholeway
meanCompP=sum(compP)/wholeway
%% set the colour map, from colour blind pallete
%mycolor=[0 0.6 0.5;0.35 0.7 0.9;0.8 0.4 0];
%mycolor=[31 120 180;166 206 227;178 223 138]/255;
mycolor=[102 194 165;252 141 98;141 160 203]/255;
%mycolor=[178 223 138;31 120 180;166 206 227]/255;




%% plot the ratios
figure();
colormap(mycolor);

subplot(4,1,1)
B0=semilogy(1:length(L),L,'LineWidth',4);
% set(get(B1(1),'Children'),'facea',0.25);
% set(get(B1(2),'Children'),'facea',0.25);
% set(get(B1(3),'Children'),'facea',0.25);
axis([0 wholeway 0.0001 1]);
ax = gca;
%ax.XTick = [0,wholeway/2,wholeway];
ax.YTick = [0.0001,0.001,0.01,0.1,1];
%ax.XTickLabel = {'0','0.5','1'};
%ax.YTickLabel = {'1e','0.5','1'};
ax.YLabel.String='[L]';
set(gca, 'FontName', 'Arial','FontSize', 16);



subplot(4,1,2)
B1=bar(inK1,'stacked','EdgeColor','none','LineStyle','none');
% set(get(B1(1),'Children'),'facea',0.25);
% set(get(B1(2),'Children'),'facea',0.25);
% set(get(B1(3),'Children'),'facea',0.25);
axis([0 wholeway 0 1]);
ax = gca;
%ax.XTick = [0,wholeway/2,wholeway];
ax.YTick = [0,0.5,1];
%ax.XTickLabel = {'0','0.5','1'};
ax.YTickLabel = {'0','0.5','1'};
ax.YLabel.String='[K_1]';
set(gca, 'FontName', 'Arial','FontSize', 16);

hold on;
plot(1:length(L),T1,'k','LineWidth',0.5);
hold off;

subplot(4,1,3)
B2=bar(inK2,'stacked','EdgeColor','none','LineStyle','none');
% set(get(B1(1),'Children'),'facea',0.25);
% set(get(B1(2),'Children'),'facea',0.25);
% set(get(B1(3),'Children'),'facea',0.25);
axis([0 wholeway 0 1]);
ax = gca;
%ax.XTick = [0,wholeway/2,wholeway];
ax.YTick = [0,0.5,1];
%ax.XTickLabel = {'0','0.5','1'};
ax.YTickLabel = {'0','0.5','1'};
ax.YLabel.String='[K_2]';
set(gca, 'FontName', 'Arial','FontSize', 16);

hold on;
plot(1:length(L),T1,'k','LineWidth',0.5);
hold off;


subplot(4,1,4)
B3=bar(inP,'stacked','EdgeColor','none','LineStyle','none');
axis([0 wholeway 0 1]);
ax = gca;
%ax.XTick = [0,wholeway/2,wholeway];
ax.YTick = [0,0.5,1];
%ax.XTickLabel = {'0','0.5','1'};
ax.YTickLabel = {'0','0.5','1'};
ax.XLabel.String='t';
ax.YLabel.String='[P]';
set(gca, 'FontName', 'Arial','FontSize', 16);

hold on;
plot(1:length(L),T1,'k','LineWidth',0.5);
hold off;

