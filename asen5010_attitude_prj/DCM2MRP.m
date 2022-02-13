function q = DCM2MRP(C)
%% NOTE -
% THIS CODE IS FROM THE SUPPORTING MATERIAL OF THE BOOK.

%% Original code
% C2MRP
%
%	Q = C2MRP(C) translates the 3x3 direction cosine matrix
%	C into the corresponding 3x1 MRP vector Q where the 
%	MRP vector is chosen such that |Q| <= 1.
%

b = DCM2EP(C);

q(1) = b(2)/(1+b(1));
q(2) = b(3)/(1+b(1));
q(3) = b(4)/(1+b(1));
q=q';
