function ProblemNo5()
n = (-1:200);
X = input('Enter an equation for x(n): ');

for a= 1:200
    if a==1
     y(a)=-1.5*X(a+1)+2*X(a+2)-0.5*X(a+3);
     x(a)=X(a+1);
    elseif (a>1)&&(a<=199)
     y(a)=0.5*X(a+2)-0.5*X(a);
     x(a)=X(a+1);
    elseif a==200
     y(a)=1.5*X(a+1)-2*X(a)+0.5*X(a-1);
     x(a)=X(a+1);
    else 
     x(a)=X(a+1);
     y(a)=NaN;
    end
end
ctr = 0:199;
plot(ctr,x,'-*r','markersize',3)
hold on,
plot(ctr,y,'-*b','markersize',3)
grid on
legend('x(n)','y(n)');
