## Deliverable 1

library(dplyr)

MechaCar_df <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = MechaCar_df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = MechaCar_df))

## Deliverable 2

SuspensionCoil_df <- read.csv(file='Resources/Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

total_summary <- SuspensionCoil_df %>% summarize(Mean=mean(PSI),
  Median = median(PSI),
  Variance=var(PSI),
  SD=sd(PSI))

lot_summary <- SuspensionCoil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                               Median= median(PSI),
                                                                               Variance=var(PSI),
                                                                               SD=sd(PSI))

## Deliverable 3

## T Test to determine if PSI across all manufacturing lot is statistically different from the population mean of 1,500 PSI
t.test(SuspensionCoil_df$PSI,mu=1500)

## T Test for each manufacturing lot
lot1 <- subset(SuspensionCoil_df, Manufacturing_Lot=='Lot1')
lot2 <- subset(SuspensionCoil_df, Manufacturing_Lot=='Lot2')
lot3 <- subset(SuspensionCoil_df, Manufacturing_Lot=='Lot3')

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
