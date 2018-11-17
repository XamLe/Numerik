function [] = programmTest(n)
    
    for i = 1:n+2
        x(i) = -1 + (i-1)*(2/(n+1));
        y(i) = exp(x(i));
    end
    
    subplot(1,3,1); natuerlicheSplineInterpolation(x,y);
    subplot(1,3,2); periodischeSplineInterpolation(x,y);
    subplot(1,3,3); hermiteSplineInterpolation(x,y, exp(-1), exp(1));
end