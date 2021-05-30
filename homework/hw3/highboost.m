function out = highboost(k, input_im)
id = [0 0 0 0 0;
      0 0 0 0 0;
      0 0 1 0 0;
      0 0 0 0 0;
      0 0 0 0 0];
 lp = ones(5)/25;
 hp = id - lp;
 un = id + k*hp;
 out = filter2(un, input_im);
end