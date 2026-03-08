ks=1
kd=0.1
m=10

A=[0 1;-ks/m -kd/m];
B=[0; 1/m];
C=[1 0]
D=[0]

Ci=eye(2,2)
Di=[0;0];


system1=ss(A,B,C,D)

time2=0:0.005:100

[ys, ts]=step(system1, time2)
x0=[0;0];




figure(1)
hold on
plot(out.simout.Time, out.simout.Data )
plot(ts,ys)
