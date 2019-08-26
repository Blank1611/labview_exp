A = [-0.0285 -0.0014
     -0.0371 -0.1476];
B = [-0.0850 -0.0238
     -0.0802 -0.4462];
C = [0 1
     1 0];
D = zeros(2, 2);
CSTR = ss(A, B, C, D);
Ts = 1;
MPCobj = mpc(CSTR, Ts);
T = 25;
r = [3, 1];
sim(MPCobj, T, r);