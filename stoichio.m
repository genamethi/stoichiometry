A = input( 'Enter in your coefficient matrix A: ' );
[R,jb] = rref(A);
disp(R);                          %R will be row reduced matrix, jb an array pivot columns
FreeVar = setdiff(1:size(A,2),jb) %Extrapolate from pivots the free variable index
x = -R(:, FreeVar);               %Part 1: Parametric vector form. Note negation 
x(FreeVar) = 1                    %Part 2: 1 in position corresponding to parameter
CoEff = (x/min(x))                %Divide by the smallest element of parameterized vector
a = input('Select scalar a: ');   %Want integer value moles as coefficients
CoEff = a*CoEff                   %Our Stoichiometric Coefficients
