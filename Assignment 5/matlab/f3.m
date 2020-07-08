function [ prob ] = f3(a, b, x, c, d)

% input parameters:
% a, b, x, c, d: index corresponding of parameter, cf. exc. 2 (e.g. a=3 represents a_3: summer)
% set parameter to 0 if unspecified (e.g. a=0 represents all seasons)

%verify input validity
if a > 4
    a = 0; 
    disp("a out of range, set to 0");
end
if b > 2
    b = 0;
    disp("b out of range, set to 0");
end
if x > 2
    x = 0;
    disp("x out of range, set to 0");
end
if c > 3
    c = 0;
    disp("c out of range, set to 0");
end
if d > 2
    d = 0;
    disp("d out of range, set to 0");
end


%for each parameter: if the parameter is zero, expand prob to the sum of
%all probabilites for possible values of this parameter
prob = expandA(a,b,x,c,d);
%if one or more parameters are set to zero, the expand functions create a
%tree structure of function calls over which the overall probability is
%summed up.

return;


%calculate one probability with fixed a,b,c,d,x
function [ p ] = oneProb(a, b, x, c, d)

%set probability tables
A = [0.25, 0.25, 0.25, 0.25];       %P(a_i)
B = [0.6, 0.4];                     %P(b_i)
X = [0.5, 0.7; 0.6, 0.8; 0.4, 0.1; 0.2, 0.3];               %P(x_1 |a,b)
X(:,:,2) = [0.5, 0.3; 0.4, 0.2; 0.6, 0.9; 0.8, 0.7];        %P(x_2 |a,b)
                                                            %X(a_j, b_k, x_i)
C = [0.6, 0.2, 0.2; 0.2, 0.3, 0.5];     %P(c_i | x_k)   :   C(x_k, c_i)
D = [0.3, 0.7; 0.6, 0.4];               %P(d_i | x_k)   :   D(x_k, c_i)

%calculate probability from tables
p = A(a) * B(b) * X(a,b,x) * C(x,c) * D(x,d);
return;


%if a is zero, return sum of probabilities for all possible a
function [ p ] = expandA(a,b,x,c,d)
if a == 0
    p = expandB(1,b,x,c,d) + expandB(2,b,x,c,d) + expandB(3,b,x,c,d) + expandB(4,b,x,c,d);
else
    p = expandB(a,b,x,c,d);
end
return;

%if b is zero, return sum of probabilities for all possible b
function [ p ] = expandB(a,b,x,c,d)
if b == 0
    p = expandX(a,1,x,c,d) + expandX(a,2,x,c,d);
else
    p = expandX(a,b,x,c,d);
end
return;

%if x is zero, return sum of probabilities for all possible x
function [ p ] = expandX(a,b,x,c,d)
if x == 0
    p = expandC(a,b,1,c,d) + expandC(a,b,2,c,d);
else
    p = expandC(a,b,x,c,d);
end
return;

%if c is zero, return sum of probabilities for all possible c
function [ p ] = expandC(a,b,x,c,d)
if c == 0
    p = expandD(a,b,x,1,d) + expandD(a,b,x,2,d) + expandD(a,b,x,3,d);
else
    p = expandD(a,b,x,c,d);
end
return;

%if d is zero, return sum of probabilities for all possible d
function [ p ] = expandD(a,b,x,c,d)
if d == 0
    p = oneProb(a,b,x,c,1) + oneProb(a,b,x,c,2);
else
    p = oneProb(a,b,x,c,d);
end
return;
