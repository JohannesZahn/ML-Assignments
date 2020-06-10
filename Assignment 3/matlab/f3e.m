function [l2dist] = f3e(mu_n, n, samples)

[l2dist] = zeros(1,6);

g = @(x, mu, var) ...
    ( 1 / ( sqrt( 2*pi*var )) * exp( -( x - mu ).^2 / ( 2*var ) ) );

var = 1;

var_0 = 1;
     

N = @(x) g(x, 3, 1);

B = @(i) @(x) g(x, mu_n(i), (var_0*var) / (n(i)*var_0+var));

for i = 1:length(n)
    l2dist(i) = sqrt(dot(N-B(i),B(i)-N));
end



end
