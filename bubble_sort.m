clc;
clear;
x=[4 3 7 2 9 1];
n=length(x);
for i=1:1:n
    for j=i+1:1:n
        if x(i) > x(j)
            p= x(i);
            x(i)= x(j);
            x(j)= p;
        end;
    end;
end;
ans = x