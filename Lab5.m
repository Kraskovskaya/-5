% �������� 1

p1=[0 7 0 7]
p2=[1 9 1 9]
tf(p1,p2)
tf(p2,p1)

clsys1=feedback(tf(p1,p2),tf(p2,p1))
clsys1=feedback(tf(p1,p2),tf(p2,p1))
bl3=parallel(tf(p1,p2),tf(p2,p1))


help series
help parallel
help feedback

% �������� 2
disp ('������') 
P=[1,0.3 4.3 0.4]
disp('����� �������')
R=roots(P)

disp('������� �� ������ �� �������')
P=poly(P)

% �������� 3
CL1=zpk(clsys1)
figure(4)
pzmap(clsys1),grid on

