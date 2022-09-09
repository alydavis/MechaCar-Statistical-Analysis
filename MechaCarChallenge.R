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