function [J, grad] = costFunctionReg(theta, X, y, lambda)
m = length(y); % number of training examples
J = 0;
grad = zeros(size(theta));
grad_reg=grad;
J=(1/m)*sum(-1*y.*log(sigmoid(X*theta)) - (1-y).*log(1-sigmoid(X*theta))) + (lambda/(2*m))*sum(theta(2:size(theta)).^2);
grad_reg=(lambda/m)*theta;
grad_reg(1)=0;
grad=(1/m)*X'*(sigmoid(X*theta)-y) + grad_reg;
end
