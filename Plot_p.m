clc; clear all;

x_range = linspace(0, 0.45, 1000);
y_range = linspace(-80, 80, 1000);
xlabel = "t [s]"; ylabel = "p [kPa]"

input_file = "MUL2/p.dat";


plot(x, y)