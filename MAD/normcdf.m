%This has not been tested sufficiently
function y=normcdf(x)
	y = x; %Needs a deep copy		
	y.value= normcdf(x.value); %Evaluate given the underlying value 
	y.deriv = normpdf(x.value) .* x.deriv; %Note chain rule
end