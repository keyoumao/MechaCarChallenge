# MechaCarChallenge

1. MPG Regression
-Design and interpret a multiple linear regression analysis to identify variables of interest.
  1)Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  Coefficients:
                Estimate Std. Error t value Pr(>|t|)
(Intercept)    -3.287e+01  1.606e+01  -2.047   0.0465 *  
vehicle length  4.958e+00  8.674e-01   5.715 8.24e-07 ***
vehicle weight  1.338e-03  9.574e-04   1.397   0.1691
spoiler angle  -2.970e-02  9.007e-02  -0.330   0.7431
AWD           -5.999e+00  3.480e+00  -1.724   0.0915 .
  With a common p-value assumption of 0.05. Variables such as intercept, vehicle length and vehicle weight provide non-random amounts of variance, so that have significant impact on the mpg values.

  2)Is the slope of the linear model considered to be zero? Why or why not?
  Coefficients:
                    (Intercept)                         "vehicle length"            "vehicle weight"  
                     -32.871709                         4.957703                         0.001338  
                    "spoiler angle"                     AWD  
                      -0.029705                        -5.999496  
  The slope of the linear model is not considered to be zero. Because we have at least one variable that R values are larger than 0.5 where p-value is also smaller than 0.05. The H0 hypothesis is sufficiently rejected.

  3)Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  The Pearson Coefficient Matrix is given as:
                 vehicle length vehicle weight spoiler angle         AWD         mpg
vehicle length     1.00000000    -0.12271790    0.02577114  0.08565668  0.60947984
vehicle weight    -0.12271790     1.00000000   -0.11307851 -0.03698098  0.09068314
spoiler angle      0.02577114    -0.11307851    1.00000000 -0.09120266 -0.02083999
AWD                0.08565668    -0.03698098   -0.09120266  1.00000000 -0.14166977
mpg                0.60947984     0.09068314   -0.02083999 -0.14166977  1.00000000
vehicle length is the dominant parameter and we could obtain the linear regression relationship
mpg = -25.062+4.673*vehicle length
See Figure 1 for demonstration.

2. Suspension Coil Summary

- t-test

1)summary statistics table for the suspension coil’s pounds-per-inch continuous variable.
Mean = 1499
Median = 1500
Variance = 62.29
Standard deviation = 7.89

2)The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. Does the current manufacturing data meet this design specification? Why or why not?
Yes, the variance is ~62 < 100.

3)Assuming our significance level was the common 0.05 percent, our p-value 0.06028 is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

3. Design Your Own Study

Calculated Table:
                    vehicle length vehicle weight spoiler angle ground clearance    AWD         mpg
vehicle length       1.00000000    -0.12271790    0.02577114      -0.31663112  0.08565668  0.60947984
vehicle weight      -0.12271790     1.00000000   -0.11307851       0.08511338 -0.03698098  0.09068314
spoiler angle        0.02577114    -0.11307851    1.00000000      -0.21112057 -0.09120266 -0.02083999
ground clearance    -0.31663112     0.08511338   -0.21112057       1.00000000 -0.15214456  0.32874886
AWD                  0.08565668    -0.03698098   -0.09120266      -0.15214456  1.00000000 -0.14166977
mpg                  0.60947984     0.09068314   -0.02083999       0.32874886 -0.14166977  1.00000000

From the correlation Matrix, we could spotify the R values which are greater than 0.5 are only the mpg~vehicle length. 
In order to obtain a better correlation to fuel efficiency. We can collect more data on cost and enginee size etc.). Then, we could run a correlation analysis on these newly added data with the mpg and determine if there is relationship among these factors. t-test could also be used to test the hypothesis, for instance, does the vehicle weight truly affect the mpg? We might need more data to testify our assumption.
