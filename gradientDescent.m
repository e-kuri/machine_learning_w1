function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

	delta = zeros(1,size(X)(2));
	for j = 1:m
		delta(1,:) = delta(1,:) + (theta'*X(j,:)' - y(j)) * X(j,:);
	end;
%	(theta'*X' - y') * X;
%	delta = (1/m) * ((theta'*X' - y') * X)
	theta = (theta' - alpha * delta/m)';



    % ============================================================

    % Save the cost J in every iteration 	
    J_history(iter) = computeCost(X, y, theta)

end

end
