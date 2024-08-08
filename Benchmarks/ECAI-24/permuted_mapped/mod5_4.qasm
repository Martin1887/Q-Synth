OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
creg c[14];
cx q[11],q[12];
cx q[3],q[4];
cx q[3],q[11];
x q[10];
h q[10];
cx q[11],q[10];
swap q[4],q[3];
tdg q[3];
tdg q[11];
cx q[3],q[11];
tdg q[12];
cx q[11],q[12];
t q[10];
cx q[11],q[10];
cx q[10],q[4];
swap q[4],q[10];
cx q[4],q[3];
cx q[10],q[11];
tdg q[10];
t q[4];
cx q[10],q[4];
tdg q[11];
cx q[3],q[11];
swap q[11],q[10];
cx q[3],q[11];
tdg q[12];
cx q[11],q[12];
s q[3];
s q[4];
cx q[3],q[4];
sdg q[4];
cx q[3],q[4];
h q[3];
cx q[4],q[3];
swap q[11],q[3];
h q[11];
s q[12];
cx q[11],q[12];
s q[10];
cx q[11],q[10];
t q[11];
tdg q[10];
cx q[11],q[10];
swap q[11],q[10];
tdg q[12];
cx q[11],q[12];
t q[12];
cx q[11],q[12];
swap q[11],q[10];
cx q[11],q[12];
h q[11];
cx q[10],q[11];
h q[11];
s q[3];
cx q[11],q[3];
cx q[11],q[12];
t q[11];
tdg q[12];
cx q[11],q[12];
swap q[2],q[3];
tdg q[2];
cx q[12],q[2];
t q[2];
cx q[12],q[2];
swap q[2],q[3];
cx q[11],q[3];
h q[11];
cx q[12],q[11];
cx q[3],q[11];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13];
measure q[11] -> c[0];
measure q[12] -> c[1];
measure q[10] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
