format short
%M?tv?rden tagna fr?n wikipedia

temp = [-25 -20 -15 -10 -5 0 5 10 15 20 25 30 35];
speed1 = [315.77 318.94 322.07 325.18 328.25 331.30 334.32 337.31 340.27 343.21 346.13 349.02 351.88];

figure(1)
plot(temp, speed1)
grid on
xlabel('Temperatur')
ylabel('Ljudhastighet')

polyfit(temp, speed1, 1)

%M?tv?rden tagna fr?n
%http://www.sengpielaudio.com/calculator-airpressure.htm 
%vid 20? och vid 101,325 kPa

hum = [0 10 20 30 40 50 60 70 80 90 100];
speed2 = [343.36 343.49 343.61 343.74 343.87 343.99 344.12 344.24 344.37 344.49 344.62];

figure(2)
plot(hum, speed2)
grid on
xlabel('Humidity')
ylabel('Ljudhastighet')

polyfit(hum, speed2, 1)


%Id?: anv?nd startv?rde f?r temperaturkurvan och ha en f?rstagradskurva med
%tv? ok?nda, en f?r temperatu och en fuktighet. => 
%   speed = 331.1190 + 0.6016*temp + 0.0126*humidity
