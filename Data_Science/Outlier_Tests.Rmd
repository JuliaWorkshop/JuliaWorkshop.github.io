
<h1>Outlier Detection</h1>
One of the first steps towards obtaining a coherent analysis is the detection of outlaying observations. Although outliers are often considered as an error or noise, they may carry important information (see Mandelbrot/Taleb).

Detected outliers are candidates for aberrant data that may otherwise adversely lead to model misspecification, biased parameter estimation and incorrect results. It is therefore important to identify them prior to modelling and analysis.

Outlier detection methods have been suggested for numerous applications, such as credit card fraud detection, clinical trials, voting irregularity analysis, data cleansing, network intrusion, severe weather prediction, geographic information systems and athlete performance analysis.



<h2>Grubbs' Test</h2>
Grubbs' test is a formal hypothesis test for assessing whether or not a  data set contains an outlier.
This data set is univariate and approximately normal distributed. This test is designed for assessing one outlier only.  If more outliers are suspected, alternative tests, such as the Tietjen-Moore test, are recommended.

<h4>Hypotheses:</h4> Grubbs' test is defined for the hypothesis: 


Ho :  There are no outliers in the data set  
Ha :  There is exactly one outlier in the data set  

#### Outliers
<h3>Grubb's Test for Outliers</h3>
<pre><code>
library(outliers)
grubbs.test(X)
</code>
</pre>


#### Dixon Test for Outliers

<p>
</p><h4>Outliers on Boxplots</h4>
Boxplots can used to determine an outlie (we will refer to them as ``boxplot outliers")

<pre><code>
boxplot(X, horizontal = TRUE)
</code>
</pre>


```R

```
