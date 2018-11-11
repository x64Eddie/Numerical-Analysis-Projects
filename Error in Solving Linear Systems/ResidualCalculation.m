function ResidualCalculation(A,b)
%(i)Create or read A and b(ii) Solve for Ax = b using GEpivot, calling
%computed splution x.(iii) Compute residual r = b - Ax, using the procedure
%described following(6.78). (iv) Solve for the error in Ae = r, calling
%the solution e.(v) Print e and x+e. Also print ||e||/||x||.

%Problem 1c) H5x = [1, .06, 0.4, 0.3, 0.3]^T, where is H5 defined in (6.92)

%Solving using GEpivot Ax = b
[x, ~, ~] = GEpivot(A,b);

%Compute the residual
r = b - A * x;

%Solve for the error in Ae = r, calling the solution r
[e, ~, ~] = GEpivot(A, r);

%Print e and x+e
t = e + x;
fprintf('e: %.5f\nx+e:%.5f', e, t);

for i = 1: 1: length(x)
    e0 = e(i);
    x0 = x(i);
    
    s = e0 + x0;
    
    fprintf('%15.5e\t%15.5f%15.5e\n', e0, s, asb(e0, x0));
end

