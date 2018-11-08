function plotData(X, y)
% Create New Figure
figure; hold on;
%find indices of positive and negative examples
pos=find(y==1); neg=find(y==0);
%plot examples
plot(X(pos,1),X(pos,2),'k+','LineWidth',2,'MarkerSize',7);
plot(X(neg,1),X(neg,2),'ko','MarkerFaceColor','y','MarkerSize',7);
hold off;
end
