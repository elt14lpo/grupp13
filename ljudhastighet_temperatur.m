format short
%Values from wikipedia

temp = [-25 -20 -15 -10 -5 0 5 10 15 20 25 30 35];
speed1 = [315.77 318.94 322.07 325.18 328.25 331.30 334.32 337.31 340.27 343.21 346.13 349.02 351.88];

figure(1)
plot(temp, speed1)
hold on
grid on
xlabel('Temperature')
ylabel('Speed of sound')

%Testing the function given by polyfit
x1 = linspace(-25,35);
y1 = 331.1190 + 0.6016*x1;
plot(x1, y1)

polyfit(temp, speed1, 1)

%Values from
%http://www.sengpielaudio.com/calculator-airpressure.htm 
%at 20deg C and 101,325 kPa

hum = [0 10 20 30 40 50 60 70 80 90 100];
speed2 = [343.36 343.49 343.61 343.74 343.87 343.99 344.12 344.24 344.37 344.49 344.62];


figure(2)
plot(hum, speed2)
hold on
grid on
xlabel('Humidity')
ylabel('Speed of sound')

%Testing the function given by polyfit
x2 = linspace(0,100);
y2 = 343.3623 + 0.0126*x2;
plot(x2, y2)

polyfit(hum, speed2, 1)

%Idea: use start value for temperature and use the k value for both
%with two unknown, one for temp and one for humidity
%  =>   speed = 331.1190 + 0.6016*temp + 0.0126*humidity
