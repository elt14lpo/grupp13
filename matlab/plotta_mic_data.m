% testdata från 2 mikrofoner plottade 

chanel0 = [240.293 254.701 264.225 265.934 272.527 274.481 272.039 277.411 273.993 278.388 282.784 280.83 274.969 273.748 272.039 269.841 275.946 274.969 273.993 275.946 274.969 277.656 280.098 280.342 285.47 282.54 289.621 285.226 287.424 289.133 298.901 302.076 305.495 297.192 290.598 288.401 286.691 284.249 282.54 281.807 282.784 278.144 279.609 282.296 279.609 279.853 280.098 281.807 285.714 282.54 281.319 282.296 278.632 277.9 278.388 274.481 277.167 272.527 274.969 280.83 278.632 281.807 285.714 283.272 273.016 273.748 274.969 272.527 277.411 278.144 279.365 281.319 278.632 283.761 283.761 280.83 281.074 274.481 275.702 281.563 294.261 302.076 301.587 297.192 289.133 290.598 289.621 283.028 284.249 284.249 282.051 283.761 288.156 282.296 280.83 281.807 282.051 283.761 281.807 278.388];

chanel1 = [74.7253 87.9121 93.7729 98.6569 103.541 101.832 104.274 104.762 106.227 107.692 109.646 106.716 103.785 101.587 99.1453 99.6337 104.274 101.343 102.564 105.25 106.227 108.181 107.937 109.646 113.797 106.96 113.797 115.018 115.018 122.589 130.647 132.357 122.833 118.926 112.332 111.6 109.89 105.006 106.96 105.495 101.343 99.8779 102.564 102.076 101.099 105.739 102.564 105.739 106.471 105.739 106.471 105.006 101.099 100.122 99.3895 98.9011 97.4359 96.7033 100.855 102.32 104.274 105.983 103.541 100.611 95.4823 94.2613 94.9939 97.6801 97.9243 97.1917 101.832 101.343 103.541 105.495 103.053 107.204 97.1917 96.7033 98.4127 112.088 120.635 128.205 117.949 114.53 110.134 111.844 104.274 106.471 107.937 108.913 107.204 107.204 107.448 102.808 106.227 104.274 104.762 104.518 101.343 103.541];

x = linspace(1, 200)

figure(1)

plot(x, chanel0, 'r-')
hold on
plot(x, chanel1, 'b-')
grid on

ylabel('Voltage output from microphone')
xlabel('Samples')
