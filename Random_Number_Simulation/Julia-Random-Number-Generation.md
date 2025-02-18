Julia-Random-Number-Generation
========================================================
author: 
date: 
autosize: true

First Slide
========================================================
Random Number Generation
In scientific computation, we often need to generate random numbers. Monte Carlo Simulation is such a case.

We can generate a random number from the uniform distribution between 0 and 1 by simply calling rand():

In [1]:
rand()
Out[1]:
0.9601718936764068
In [2]:
rand()
Out[2]:
0.8858417649195707
In [3]:
rand()
Out[3]:
0.8428367642691632
In [ ]:
The generate number will be different for each call.
In [ ]:
We can also create a vector of random numbers, for example of size 5:
In [ ]:
rand(5)
In [ ]:
or a matrix of random numbers, for example of size 4 by 3:
In [ ]:
rand(4,3)

Random numbers from Uniform[0,100] 
[0,100]
In [5]:
rand() * 100

15.503583421885047
In [ ]:
A vector of n 
n
 random numbers from Uniform[a,b] 
[a,b]
: 


rand(n) * (b-a) + a


We can also use rand for choosing an index randomly from a range:
In [ ]:
rand(1:10)
In [ ]:
rand(1:10)
Similarly, Julia provides a function called randn for the standard Normal distribution with mean 0 and standard deviation 1, or N(0,1) N(0,1) .


randn(2,3)
Out[1]:
2×3 Array{Float64,2}:
 0.745478  -0.412221  0.452467
 1.73696   -2.58844   0.109497
To generate 10 random numbers from a general Normal distribution N($\mu$,$\sigma^2$ )

where mu=50 and sigma=3 are used.

In [7]:
mu = 50
sigma = 3

randn(10) * sigma + mu
MethodError: no method matching +(::Array{Float64,1}, ::Int64)
Closest candidates are:
  +(::Any, ::Any, !Matched::Any, !Matched::Any...) at operators.jl:502
  +(!Matched::Complex{Bool}, ::Real) at complex.jl:292
  +(!Matched::Missing, ::Number) at missing.jl:97
  ...

Stacktrace:
 [1] top-level scope at In[7]:3
In [ ]:

In [ ]:
Perhaps, we can write our own function for N(??,?? 2 ) 
N(??,??2)
:
In [3]:
function my_randn(n, mu, sigma)
  return randn(n) * sigma + mu
end
Out[3]:
my_randn (generic function with 1 method)
and call it:

In [4]:
my_randn(10, 50, 3)
MethodError: no method matching +(::Array{Float64,1}, ::Int64)
Closest candidates are:
  +(::Any, ::Any, !Matched::Any, !Matched::Any...) at operators.jl:502
  +(!Matched::Complex{Bool}, ::Real) at complex.jl:292
  +(!Matched::Missing, ::Number) at missing.jl:97
  ...

Stacktrace:
 [1] my_randn(::Int64, ::Int64, ::Int64) at ./In[3]:4
 [2] top-level scope at In[4]:1
In [ ]:
For any other advanced usages related to probabilistic distributions, the StatsFuns package is available from the Julia Statistics group8. We need to first install the package: 


julia> Pkg.update()
INFO: Updating METADATA...
...

julia> Pkg.add("StatsFuns")
INFO: Installing StatsFuns v0.1.4
INFO: Package database updated
In [ ]:
To use functions available in the StatsFuns package, we first load the package: 


julia> using StatsFuns
In [ ]:
For a Normal distribution with ??=50 
??=50
 and ??=3 
??=3
, we set: 


julia> mu = 50; sigma = 3;
In [ ]:
The probability density function (PDF) value evaluated at 52: 


julia> normpdf(mu, sigma, 52)
0.10648266850745075
In [ ]:
The cumulative distribution function (CDF) value evaluated at 50: 


julia> normcdf(mu, sigma, 50)
0.5
In [ ]:
The inverse of CDF for probability 0.5: 


julia> norminvcdf(mu, sigma, 0.5)
50.0


For many other probability distributions such as Binomial, Gamma, and Poisson distributions, similar functions are available from the StatsFuns package9.
