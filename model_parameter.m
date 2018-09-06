m = 20;
g = 9.8;
G = m * g;
I = 3.42;
M = [m 0 0; 0 m 0; 0 0 I];
a = 0.4;
b = 0.4;
w = 0.542;
c = w / 2;
cl = c;
cr = c;
r = 0.112;
XICR = 0;
ux = 0.02;
uy = 0.1;
vertical_force = [G * b / (a + b) * cr / (cr + cl);
                  G * b / (a + b) * cl / (cr + cl);
                  G * a / (a + b) * cr / (cr + cl);
                  G * a / (a + b) * cl / (cr + cl)];
C = [10 10 10; 1 1 1]';
Ts = 0.01;
alpha1 = 0.5;
alpha2 = 0.25;
beta1 = 100;
beta2 = 300;
beta3 = 1000;
delta = 0.002;
k1 = 5;
k2 = 8;
k3 = 8;
k4 = [35 35];
k5 = 0;
k6 = [0.1 0.1];
kp = 0.2;
A = 0;
B = 1;
C = 1;
D = 0;

positive_gain = 1.05;
negative_gain = 0.95;
m_d = m * positive_gain;
I_d = I * 1.01;
M_d = [m_d 0 0; 0 m_d 0; 0 0 I_d];
a_d = a * negative_gain;
b_d = b * positive_gain;
cl_d = c * negative_gain;
cr_d = c * positive_gain;
r_d = r * negative_gain;
XICR_d = XICR;