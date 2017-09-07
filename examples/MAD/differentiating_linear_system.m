%This example shows auto-differentiation of a linear system
%We have no idea on the performance of this process, but it is a proof of concept.

madinitglobals;
a_val = 1.0; %Seeding `a' with the value of 1.
a = fmad(a_val, 1); %Creates an `a` variable

%Now, solve the system [1 0; 0 a] [x_1; x_2] = b for [x_1; x_2] using the matlab left multip
b = [.1; .2]; %right hand side.

%First just using the number,
[1 0; 0 a_val] \ b

%But this can also be auto-differentiated!  Note the derivatives.
[1 0; 0 a] \ b

%Can also do much crazier setups, such as [a^2 0; 0 a] [x_1; x_2] = b
a_val = 1.4
a = fmad(a_val, 1); %Creates an `a` variable
[a^2 0; 0 a] \ b

%For sparse systems:
sparse_b = sparse(b);
A_sparse = sparse([1;2],[1;2],[1;a]); %Creates the [1 0; 0 a] sparse matrix.
%Display in full form, including derivatives with respect to `a`
full(A_sparse)

%Solve the system and differentiation
A_sparse \ b
