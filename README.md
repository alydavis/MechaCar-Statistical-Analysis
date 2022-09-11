# MechaCar Statistical Analysis

## Overview
### Project Background
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

### Analysis Requested:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Results
### Linear Regression to Predict MPG
![Image_1](Images/Deliverable_1_Result.png)

Based on the p-values compared to normal significance levels (0.05), the vehicle length and vehicle ground clearance have a statistic impact on the miles per gallon. However, the vehicle weight, spoiler angle,and AWD have p-Values that are considered random amount of variance.

The slope of this linear model is not zero, as the p value 5.35e-11 falls under the standard significance of 0.05.

Based on the r-squared value .7149, this model supports 71% of predictions and can be considered effective. 

### Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

![Image_2](Images/Deliverable_2_1_Total_Summary.png)


![Image_3](Images/Deliverable_2_2_Lot_Summary.png)

While the overall Variance falls under this threshold as shown in the total summary (62), the specific lots to not all meet this criteria. Lot3 exceeds the variance, with 170. 

### T-Tests on Suspension Coils

![Image_4](Images/Deliverable_3_1_T_Test.png)
<br> ![Image_5](Images/Deliverable_3_2_T_Test_Lot_1.png)
<br> ![Image_6](Images/Deliverable_3_3_T_Test_Lot_2.png)
<br> ![Image_7](Images/Deliverable_3_4_T_Test_Lot_3.png)

Comparing p-values for PSI across all the lots, p = 0.06 is not enough evidence to reject the null hypothesis. The same is true of Lots 1 and 2 with p-values of 1 and 0.61 respectively. However, once again with Lot 3, we can reject the null hypothesis because the p-value is .04.

This analysis further points to Lot3 as the manufacturing problem as it does not meet the quality thresholds.

### Study Design: MechaCar vs. Competition

To compare MechaCar to the competition, a study comparing key vehicle features to the competition could help drive demand for the MechaCar. When thinking about what is important for customers, any of the following metrics could be measured:
- cost 
- fuel efficiency
- horse power
- safety rating

If I were to test these metrics for MechaCar vs. Competition the process would be to create a null and alternative hypothesis, perform a statistical test, and analyze the results. 

For example, if we were to compare fuel efficiency:
  - Null Hypothesis (Ho): There is no statistical difference between the competition's mpg and MechaCar's mpg.  
  - Alternate Hypothesis (Ha): The average MechaCar mpg is greater than the average competitor's mpg. 
  
To test this hypothesis a t-test could either reject the null or confirm the alternate hypothesis. 

To perform this test, I would define the p-value. Simliar to the completed tests, the normal signfiance level of 0.05 could be standard.

#### Resources
Data Source: [MechaCar_mpg.csv](Resources/MechaCar_mpg.csv), [Suspension_Coil.csv](Resources/Suspension_Coil.csv)
<br> Resources: RStudio, R, dplyr
