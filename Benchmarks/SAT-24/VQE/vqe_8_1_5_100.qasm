OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
u(pi/2,-pi/2,pi/2) q[0];
u(pi/2,-pi/2,pi/2) q[1];
u(pi,-pi/2,pi/2) q[3];
u(pi/2,-pi/2,pi/2 + pi/2) q[4];
cx q[4],q[1];
u(0,-pi/2,1.0 + pi/2) q[1];
u(11.566370614359174,-pi/2,pi/2 + pi) q[4];
cx q[4],q[1];
u(pi/2,pi/2 - pi/2,pi/2) q[4];
u(0,-pi/2,pi/2 + 3*pi/2) q[6];
cx q[6],q[3];
u(pi/2,-pi/2,pi/2 + pi/2) q[7];
cx q[7],q[1];
u(0,-pi/2,1.0 + pi/2) q[1];
u(pi/2,0.570796326794897 - pi/2,pi/2 + 7*pi/2) q[7];
cx q[1],q[7];
u(pi/2,-pi/2,pi/2) q[1];
cx q[6],q[1];
u(0.25,pi/2 - pi/2,pi/2) q[6];
cx q[3],q[6];
u(9.67477796076938,pi/2 - pi/2,pi/2 + pi/2) q[6];
cx q[7],q[6];
u(0.25,pi/2 - pi/2,pi/2 + 7*pi/2) q[6];
cx q[3],q[6];
u(9.67477796076938,pi/2 - pi/2,pi/2 + pi/2) q[6];
cx q[1],q[6];
u(0.25,pi/2 - pi/2,pi/2 + 7*pi/2) q[6];
cx q[3],q[6];
u(9.67477796076938,pi/2 - pi/2,pi/2 + pi/2) q[6];
cx q[7],q[6];
u(0.25,pi/2 - pi/2,pi/2 + 7*pi/2) q[6];
cx q[3],q[6];
u(12.316370614359172,pi/2 - pi/2,pi/2 + 7*pi/2) q[6];
cx q[6],q[1];
u(0,-pi/2,pi/2 + pi/2) q[1];
cx q[1],q[3];
u(pi/2,-pi/2,pi/2) q[1];
cx q[1],q[0];
u(pi/2,pi/2 - pi/2,pi/2 + pi/2) q[0];
u(pi/2,pi/2 - pi/2,pi/2) q[1];
cx q[0],q[1];
u(pi/2,pi/2 - pi/2,pi/2) q[0];
cx q[6],q[7];
