% Create function
fun=@(x) sin(2.*x) - x.^2;

% Nodes
n = linspace(-5,5,17);
y_n = fun(n);

% Points
l = linspace(-5,5,1000);
y_l = fun(l);

% Fitting
[P, S] = polyfit(n, fun(n), 2);

% Eval Poly
y_n_pol = polyval(P, n);
y_l_pol = polyval(P, l);

% Errors
