% Initial
% He so luu luong cua bom k
k=4;
%Duong kinh van ra bon 1
d1=0.4;
%Duong kinh van ra bon 2
d2=0.3;
%Duong kinh bon 1
dt1=3.5;
%Duong kinh bon 2
dt2=3.5;
%Gia toc trong truong:
g=981;

%Dien tich cua van ra :
a1=pi*(d1^2)/4
%Dien tich cua van ra :
a2=pi*(d2^2)/4
%Dien tich cua bon 1:
A_1=pi*(dt1^2)/4
%Dien tich cua bon 1:
A_2=pi*(dt2^2)/4

x2 = 10;
x1 = (a2/a1)^2*x2
u = (a1*sqrt(2*g*x1))/k

n1=(-a1*sqrt(2*g)/A_1)*(1/(2*sqrt(x1)));
n2=(a1*sqrt(2*g)/A_2)*(1/(2*sqrt(x1)));
n3=(-a2*sqrt(2*g)/A_2)*(1/(2*sqrt(x2)));

A=[n1 0;n2 n3]
B=[k/A_1;0]
C=[0 1];
D=0;

pttt=ss(A,B,C,D);
Gs=tf(pttt);