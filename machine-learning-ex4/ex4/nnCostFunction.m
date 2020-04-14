function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m
%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.
%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%

yvec = zeros(size(y), num_labels);
for c = 1:num_labels
  yvec(:,c) = (y == c);
endfor

X = [ones(m, 1) X];
J = 0;
J_lambda = 0;
delta = 0;
for c = 1:size(X, 1)
  X_ex = X(c, :);
  a_1 = X_ex; % 1x401
  z_2 = X_ex * Theta1'; % 1x25
  h = sigmoid(z_2);
  a_2 = h;
  h = [ones(size(h, 1), 1) h]; % 1x26
  z_3 = h * Theta2';  % 1x10
  h = sigmoid(z_3);
  a_3 = h;
  
  a_2 = [1, a_2];
  
  delta_3 = a_3 - yvec(c, :);
  delta_2 = delta_3 * Theta2(:,2:end) .* sigmoidGradient(z_2);
  
  Theta2_grad += delta_3' * a_2; % 10 x 1 * 1 x 25
  Theta1_grad += delta_2' * a_1; % 25 x 1 * 1 x 401
  J += (-yvec(c, :)*log(h)' - (1-yvec(c, :))*log(1-h)');
endfor

J = J * (1/m);
Theta2_grad = Theta2_grad / m;
Theta1_grad = Theta1_grad / m;

% regularization
theta_zero = Theta1;
theta_zero(:,1) = zeros(size(theta_zero, 1), 1);
J_lambda += sum(sum((theta_zero).^2));
Theta1_grad += (lambda/m) * theta_zero;

theta_zero = Theta2;
theta_zero(:,1) = zeros(size(theta_zero, 1), 1);
J_lambda += sum(sum((theta_zero).^2)); 
J_lambda = (lambda/(2*m)) * J_lambda;
Theta2_grad += (lambda/m) * theta_zero;

%sum it up
J = J + J_lambda;



% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
