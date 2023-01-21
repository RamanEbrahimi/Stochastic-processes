function [in,out] = binchan(p0,l1,l0)
num = 5000;
p1 = 1-p0;
r = rand(num,1);
in = (r<=p1); % source bits
ind1 = find(in~=0); % locations of ones 
len = length(ind1);
r = rand(1,len);
q = (r>l1); % zero if bit flip (1 -> 0), one if remains (1 -> 1)
o1 = q;
ind0 = find(in==0); % locations of zeros
len = length(ind0);
r = rand(1,len);
q = (r<=l0); % one if bit flip (0 -> 1), zero if remains (0 -> 0)
o0 = q;
out = zeros(num,1);
out(ind1) = o1;
out(ind0) = o0;
%% 
