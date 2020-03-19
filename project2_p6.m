% part 6 - training the network

function weights = networktraining(input, train, weight)

% inputs - cell array of input column vectors (C1,C2,etc.)
% train - cell array of output column vectors (train0, train1, etc.)
% weight - cell array of weight matrices (w1, w2, etc.)

layers = length(weight);

for i=1:length(input)
    o = input(i);
    out = cell(1, layers);
    
    % forward pass 
    for j = 1:layers
        net =  o * weight(j);  % net = xw where x is the input vector, C1, 
                               % and w is the weights in between layers of 
                               % neurons
        o = 1./(1 + exp(-net)); % o = f(net), this output vector will be 
                                % the input of the next layer
        out{j} = o;
    end
    
    % backward pass - adjusts the hidden layers by propogating the error
    % back and adjusting weights on the way
    output = out{layers}; % start with the last layer
    error = output - train(i);  % difference between output and target 
                                % output
    delta = output .* (1 - output) .* error; % modified error
    updatedweight = eta * out{layers-1}' * delta; % iterated weight update 
                                                  % based on delta
    weight(layers) = weight(layers) - updatedweight;
    
    % for other hidden layers
    for j= (layers-1):-1:2
        delta = (delta * weight(j+1)') * out{j} * (1 - out{j});
        updatedweight = out{j-1}' * delta;
        weight(j) = weight(j) - updatedweight;
    end
    
end

