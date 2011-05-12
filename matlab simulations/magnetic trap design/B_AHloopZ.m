function B = B_AHloopZ(r,z0,R,I);
%
% 2nd order approximation for the B field generated by a PAIR of coil loop,
% (anti-Helmholtz configuration) displaced by +/-z0 from the origin on
% the Z axis, eq.(6), pg.3. notes:
% Todd Meyrath, "ELECTROMAGNET DESIGN BASICS FOR COLD ATOM EXPERIMENTS" 
% (Jan/2004)
% 
% NOTE: by comparing the full expression, eqs.(1)&(2) results w/ those 
% given by the eq.(6) (see below), it seems that one can go not further 
% than 1mm apart from the origin. Otherwise, the results diverge much from
% each other.
%
x = r(1); y = r(2); z = r(3);
rho = sqrt( x.^2 + y.^2 );
%
Bz = 3*(z-z0)*R^2/( (z-z0)^2 + R^2 )^(5/2) + (15/24)*R^2*(4*(z-z0)^2 - 3*R^2)*(4*z^3 - 6*z*rho^2)/( (z-z0)^2 + R^2 )^(9/2);
%Br = -(3/2)*rho*(z-z0)*R^2/( (z-z0)^2 + R^2 )^(5/2) - (15/16)*R^2*(4*(z-z0)^2 - 3*R^2)*(rho^3 - 4*rho*z^2) /( (z-z0)^2 + R^2 )^(9/2);
%co= x/rho; si= y/rho;
mu = 0.4*pi; % mu0 in CGS units (G*cm/A)
%
B = I*mu*Bz;