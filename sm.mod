### PARAMETER ###
param n;

### VARIABLE ###
var y {1..n, 1..n, 1..n*n} binary;
var constant;

### CONSTRAINT ###
subject to OneEach {i in 1..n, j in 1..n}: sum {k in 1..n*n} y[i,j,k] = 1;
subject to AllDiff {k in 1..n*n}: sum {i in 1..n, j in 1..n} y[i,j,k] <= 1; 
subject to RowsSum {i in 1..n}: sum {j in 1..n, k in 1..n*n} k * y[i, j, k] = constant;
subject to ColsSum {j in 1..n}: sum {i in 1..n, k in 1..n*n} k * y[i, j, k] = constant;
subject to Diag: sum {i in 1..n, k in 1..n*n} k * y[i, i, k] = constant;
subject to InvDiag: sum {i in 1..n, k in 1..n*n} k * y[i, n-i+1, k] = constant;

### OBJECTIVE ###
minimize Magic_Constant: constant;
