close all;
clear all;
clc;

start_value = input('Enter the start value: ');%-6
end_value = input('Enter the end value: ');%6

n1 = start_value:end_value;

y=input("Enter the values of signal = "); %[1 0.5 1 0.5 1 0.5 1 0.5 1 0.5 1 0.5 1]

index=1;

for i=1:length(n1)
    if(rem(n1(i),2)==0)
        x1(index)=n1(i)/2;
        y1(index)=y(i);
        index=index+1;
    end
end

subplot(2,1,1);
stem(n1,y,'r');
xlabel("Time");
ylabel("Amplitude");
grid on;
grid minor;
axis([(start_value-1) (end_value+1) -(max(y)+1) (max(y)+1)]);
title("Original signal Y[n]=X[n]");

subplot(2,1,2);
stem(x1,y1,'b');
xlabel("Time");
ylabel("Amplitude");
grid on;
grid minor;
axis([(2*start_value-1) (2*end_value+1) -(max(y1)+1) (max(y1)+1)]);
title("Compresion signal Y[n]=X[2n]");