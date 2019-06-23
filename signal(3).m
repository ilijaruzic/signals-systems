b1 = [1 -0.5 4 -2]; 
a1 = [1 1 0.5 0.125];

figure(1);
zplane(b1, a1);
figure(2);
z_trans(b1, a1);

b2 = [1 -0.5 1 -0.5]; 
a2 = [1 3 6 4];

figure(3);
zplane(b2, a2);
figure(4);
z_trans(b2, a2);
