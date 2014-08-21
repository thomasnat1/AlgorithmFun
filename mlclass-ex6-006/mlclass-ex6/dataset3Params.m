function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

posC = [.01; .03; .1; 1; 3; 10; 30];
posSigma = [.01; .03; .1; 1; 3; 10; 30];

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
% bestC = C;
% bestSigma = sigma;
% lowestError = 100;
% for i = 1: 7
% 	for j = 1: 7
% 		model= svmTrain(X, y, posC(i), @(x1, x2) gaussianKernel(x1, x2, posSigma(j)));
% 		predictions = svmPredict(model, Xval);
% 		errorVal = mean(double(predictions ~= yval));
% 		if(errorVal < lowestError)
% 			lowestError = errorVal;
% 			bestC = posC(i);
% 			bestSigma = posSigma(j);
% 		end
% 	end
% end

% C = bestC
% sigma = bestSigma
C = 1;
sigma = .1;


% =========================================================================

end
