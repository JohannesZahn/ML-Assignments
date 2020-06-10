[mu_n,n] = f3c(f3b());

g = @(x, mu, var) ...
    ( 1 / ( sqrt( 2*pi*var )) * exp( -( x - mu ).^2 / ( 2*var ) ) );

var = 1;

var_0 = 1;
     

N = @(x) g(x, 3, 1);

B = @(i) @(x) g(x, mu_n(i), (var_0*var) / (n(i)*var_0+var));

for i = 1:length(n)
    figure(i)
    fplot(N, [0 6], 'b');
    hold on
    fplot(B(i), [0,6], 'r') 
    title(i)
end
