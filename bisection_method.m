clc;
clear;
x1 = input('x1 = ');
x2 = input('x2 = ');
f = x1^3-2*x1-5;
ff = x2^3-2*x2-5;
if f*ff < 0
    e = input('%error = ');
    for k=1:1:10
        t(k)=k;
        a(k)=x1;
        b(k)=x2;
        f1(k) = a(k)^3-2*a(k)-5;
        f2(k) = b(k)^3-2*b(k)-5;
        c(k) = (a(k)+b(k))/2;
        f3(k) = c(k)^3-2*c(k)-5;
        if k>1
            l(k) = (( c(k)-c(k-1))/c(k) )*100;
            m(k) = abs(l(k));
            if m(k)<=e
                break;
            end
        end
        if f1(k)*f3(k) > 0
            x1 = c(k);
        else
            x2 = c(k);
        end
    end
    t=[t' a' b' c' f1' f2' f3' m'];
    disp('_________________________________________________________________________________');
    disp('   Itr. No       x1       x2        xr      f(x1)     f(x2)     f(xr)     %error ')
    disp('_________________________________________________________________________________');
    disp( t );
    root = c(k)
    else
        disp(' Change the value ')
end    