function filter = gaussv(n, sigma)
x = [-(n-1)/2:1:(n-1)/2];
filter = normpdf(x,0,sigma);
end

