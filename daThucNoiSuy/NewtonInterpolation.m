function result = NewtonInterpolation(xa, ya, x)

    da = DividedDifference(xa, ya);
    result = NewTonForm(xa, da, x);
    
end