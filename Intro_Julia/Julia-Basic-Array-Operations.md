Julia-Basic-Array-Operations
========================================================
author: 
date: 
autosize: true

Arithmetic and functions of vectors and matrices: 
========================================================

#### Basic Operations


x * 3, x + 3 multiply/add every element of x by 3 
x + y element-wise addition of two vectors x and y 
A*y, A*B product of matrix A and vector y or matrix B 

Basic Operations
========================================================

x * y not defined for two vectors! 
x .* y element-wise product of vectors x and y 
x .^ 3 every element of x is cubed 

 

Mathematical Operations
========================================================

cos(x), cos(A) cosine of every element of x or A 
exp(A), expm(A) exp of each element of A, matrix exp eA


More Mathematical Operations
========================================================

x', A' conjugate-transpose of vector or matrix 
x'*y, dot(x,y), sum(conj(x).*y) three ways to compute x · y 
A \ b, inv(A) return solution to Ax=b, or the matrix A-1 
??, V = eig(A) eigenvals ?? and eigenvectors (columns of V) of A 



