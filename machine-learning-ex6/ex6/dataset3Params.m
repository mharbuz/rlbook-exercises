function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

C_set = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
sigma_set = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
sigma_set = sqrt(sigma_set);

best_error = Inf;

for i = 1:length(C_set)
  for j = 1:length(sigma_set)
    fprintf(['Train C = %f sigma = %f '], C_set(i), sigma_set(j));
    model = svmTrain(X, y, C_set(i), @(X, y) gaussianKernel(X, y, sigma_set(j)));
    predictions = svmPredict(model, Xval);
    if (mean(double(predictions ~= yval)) < best_error)
      best_error = mean(double(predictions ~= yval));
      C = C_set(i);
      sigma = sigma_set(j);
      fprintf(['Better C = %f sigma = %f '], C_set(i), sigma_set(j));
    endif
  endfor
endfor

% =========================================================================

end
