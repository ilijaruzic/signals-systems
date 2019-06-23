%%
b = [1 3 3 2];
a = [1 0.5 0 8 4];
zplane(b,a);

%%
b = deconv(b,[1 2]); 
a = deconv(a,[1 2]);
r = unique(abs(roots(a)));
w = [0:0.01:2*pi]; 
x = cos(w); 
y = sin(w);
hold on;
plot(r(1)*x,r(1)*y,'k',r(2)*x,r(2)*y,'k');
area(r(2)*x,r(2)*y,'FaceColor',[0.0 0.0 1.0]);
area(r(1)*x,r(1)*y,'FaceColor',[1.0 0.0 0.0]);

%%
[th,r] = meshgrid(pi*[-1:.05:1],0:.1:3);
[x,y] = pol2cart(th,r); z = x+j*y;
absX = abs((b(1) + b(2)*z.^-1 + b(3)*z.^-2)./...
(a(1) + a(2)*z.^-1 + a(3)*z.^-2 + a(4)*z.^-3));
figure; mesh(x,y,absX);
xlabel('Real Part'); ylabel('Imaginary Part');
axis([-3,3,-3,3,0,4]);

%%
[R,P,K] = residuez(b,a);
abs(R);
angle(R)/pi;
abs(P);
angle(P)/pi;
