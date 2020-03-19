% part 7 - dependence on parameters
x = [0 1 2];

% ran the training program while changing the input and weights which
% affected the number of layers
% changed the output of the training program to percent error
a1 = project2_p6(C2,train1,w1);
a2 = project2_p6(C3,train1,w1);
a3 = project2_p6(C1,train1,w2);
a4 = project2_p6(C2,train1,w2);
a5 = project2_p6(C3,train1,w2);
a6 = project2_p6(C1,train1,w3);

figure
plot(x,a1,'LineWidth',2)
hold on
plot(x,a2,'LineWidth',2)
hold on
plot(x,a3,'LineWidth',2)
hold on
plot(x,a4,'LineWidth',2)
hold on
plot(x,a5,'LineWidth',2)
hold on
plot(x,a6,'LineWidth',2)
hold off 
title('Dependence on Layers')
ylabel('Percent Error (%)')