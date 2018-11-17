function [] = testStahl()
    x = 1:7;
    
    y_load = [2537.25 2984.25 3260.25 3397.00 3462.00 3464.75 3383.5];
    y_stress = [38.76 45.56 49.80 51.89 52.88 52.92 51.68];
    y_strain = [7.44 9.3 11.16 13.02 14.88 16.74 18.60];
    
    subplot(1,3,1); natuerlicheSplineInterpolation(x, y_load);
    subplot(1,3,2); natuerlicheSplineInterpolation(x, y_stress);
    subplot(1,3,3); natuerlicheSplineInterpolation(x, y_strain);
end