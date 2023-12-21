channels_rows = v25p'

%pick a row to do wavelet decomposition

%using waveletAnalyzer Toolbox

example =channels_rows(1,:);

[c, l] = wavedec(example, 4, 'db2');  
approximation = appcoef(c, l, 'db2');  % extracting the approximation co-efficients 
[d1, d2, d3, d4] = detcoef(c, l, [1 2 3 4]);  % extracting the level 3 detail coefficients 

subplot(5, 1, 1)
plot(approximation);
title('Approximation at Level 4')
subplot(5, 1, 2)
plot(d4)
title('Detail Coefficients at Level 4');
subplot(5, 1, 3)
plot(d3)
title('Detail Coefficients at Level 3');
subplot(5, 1, 4)
plot(d2)
title('Detail Coefficients at Level 2');
subplot(5, 1, 5)
plot(d1)
title('Detail Coefficients at Level 1');