figure();

subplot(2,1,1);
plot(t,LG0000/100,'LineWidth',4);
ylim([0 1]);
ax = gca;
ax.YTick = [0,0.5,1];
ax.YTickLabel = {'0','0.5','1'};
ax.YLabel.String='[L]';
set(gca, 'FontName', 'Arial','FontSize', 16);

subplot(2,1,2);
plot(t,TG00001/1000,'LineWidth',4);
ylim([0 1]);
ax = gca;
ax.YTick = [0,0.5,1];
ax.YTickLabel = {'0','0.5','1'};
ax.YLabel.String='[T_p]';
ax.XLabel.String='t';
set(gca, 'FontName', 'Arial','FontSize', 16);