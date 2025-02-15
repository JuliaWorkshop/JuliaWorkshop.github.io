Julia-Randon-Numbers
========================================================
author: 
date: 
autosize: true

 Random Numbers
========================================================



Many random number functions require using Random.
  	 
Set seed 	seed!(seed)
Random numbers 	rand()   # uniform [0,1)
randn()  # normal (-Inf, Inf)


Slide With Code
========================================================

Random from Other Distribution 	using Distributions

my_dist = Bernoulli(0.2) # For example
rand(my_dist)
Random subsample elements from A with inclusion probability p 	randsubseq(A, p)


Sampling
========================================================


Random permutation elements of A 	

<pre><code>
shuffle(A)
</code></pre>
