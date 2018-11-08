function p = predict(theta, X)
for i=1:m
    p(i)=sigmoid((X(i,:)*theta)') >=0.5;
end
end
