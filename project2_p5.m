%Part 5 Initializing the Network
%To initialize the network we assign random small numbers to each weight
n=3; %setting number of layers to 3
WMatrix=cell(1,n);
for i=1:n
    WMatrix{i}= rand([4 4]); %This assigns weights for each layer, which
end                         % will be random numbers between 0 and 1
WMatrix = cell2mat(WMatrix);
in=[1;2;3;4];
MLNETWORK(in,WMatrix)