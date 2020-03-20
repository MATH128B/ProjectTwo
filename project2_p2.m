%Read digits from data base.
%Type lines 3-6 in command window to produce a zero-image.
digit = train0(1,:);
digitimage = reshape(digit, 28, 28); %little i
image(rot90(flipud(digitimage),-1));
colormap(gray(256)), axis square tight off

%Compute average digit (from 17a)
%plot them and compare with p. 180.
T(1,:) = mean(train0);
T(2,:) = mean(train1);
T(3,:) = mean(train2);
T(4,:) = mean(train3);
T(5,:) = mean(train4);
T(6,:) = mean(train5);
T(7,:) = mean(train6);
T(8,:) = mean(train7);
T(9,:) = mean(train8);
T(10,:) = mean(train9);

for j = 1:10
    subplot(2,5,j);    %create 2x5 plot of 10 digits
    i = T(j,:);        %loop through each T defined above
    digitImage = reshape(i, 28, 28); %big I
    image(rot90(flipud(digitImage),-1));
    colormap(gray(256)), axis square tight off
end
