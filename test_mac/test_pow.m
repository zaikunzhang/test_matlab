function y = test_pow(x)

mex('-setup', 'Fortran');
mex('-v', 'LDFLAGSVER=$(echo $LDFLAGSVER | sed "s|-undefined error|-undefined dynamic_lookup|")', 'pow.F');
y = pow(x);
%assert(y == x^int64(x), 'pow failed')
