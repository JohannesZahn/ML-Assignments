function [c1_proj, c2_proj] = f5c(c1, c2, mu1, mu2, scatter_w)
w = inv(scatter_w) * (mu1-mu2)';         %calculate w        %transpos. erneut invertiert (s.o.)
w = w/norm(w);       %normalize w
m = [1/2*(mu1(1)+mu2(1)) , 1/2*(mu1(2)+mu2(2))];        %get global mean from both class means

%project each element of both classes on the line defined by the vector
%between the global mean and w
c1_proj = (((c1 - m) * w) .* w' )+m;
c2_proj = (((c2 - m) * w) .* w' )+m;
end
