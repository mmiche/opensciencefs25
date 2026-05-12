# install.packages("aplore3")
library(aplore3)
library(ggplot2)

# All variables in vars are dichotomous, e.g., alive or dead, no or yes, etc.
vars <- c("death", "gender", "inh_inj", "flame", "race")
burn1000Num <- burn1000[,vars]
# Change the columns in vars from factor to numeric.
for(i in vars) {
    if(any(c("gender", "race") == i)) {
        burn1000Num[,i] <- abs(as.numeric(burn1000Num[,i]) - 2)
    } else {
        burn1000Num[,i] <- as.numeric(burn1000Num[,i]) - 1
    }
}
# Check, how many observations for each
apply(burn1000Num, 2, function(x) table(x))

# Result output from logistic regression
summary(glm(death ~  gender + inh_inj + flame + race, family = binomial, data = burn1000Num))

# eg = expand.grid
# This are ALL the groups that are produced,
# by combining each level of one of these
# binary predictors with the levels of the
# remaining predictors.
eg <- base::expand.grid(
    gender=0:1,
    inh_inj=0:1,
    flame=0:1,
    race=0:1
)
# sum3, because the sum exludes gender.
sum3 <- apply(eg[,-1], 1, sum)
# Produce increasing order of whether just
# one of the 3 predictors is present, two,
# or all 3.
eg <- eg[order(sum3),]
cbind(eg, sort(sum3))

# Script lines 45-65:
# All of the following code prepares the data,
# so that it is most efficient to obtain the
# main visual output in script line 67.
d1 <- burn1000Num[,-1]
datString <- as.character(unlist(d1))
datStringMat <- matrix(datString, nrow=nrow(d1))

datStringLs <- list()
for(i in 1:nrow(datStringMat)) {
    datStringLs[[i]] <- paste0(datStringMat[i,], collapse = "")
}
datStringVec <- unlist(datStringLs)

rows <- cases <- c()
for(i in 1:nrow(eg)) {
    idx_i <- which(datStringVec %in% paste0(eg[i,], collapse = ""))
    rows <- c(rows, nrow(d[idx_i,]))
    cases <- c(cases, sum(d[idx_i,"death"]))
}
perc <- cases/rows *100
perc[is.na(perc)] <- NA
resDf <- data.frame(rows, cases, Percent=perc, gender=eg$gender)
resDf$gender <- forcats::as_factor(resDf$gender)
resDf
# A positive trend is visible. The same is expressed
# in the model output: 3 out of 4 predictors are positive.
# The negative predictor is the weakest of the 4, i.e.,
# it has the lowest z value.
ggplot(data=resDf, aes(x=1:nrow(resDf), y=Percent, color=gender)) +
    geom_point()
# --------------------------------------

# The following code is merely a side note, for those
# who wish to see it. Namely, the comparisons of the
# outcome percentage by each predictor.

for(i in vars[-1]) {
    print(i)
    print(prop.table(table(burn1000Num[,c(i, "death")]), margin=1)*100)
    cat("-----------\n")
}

# Conclusion:
# In the predictors gender, inh_inj, and flame, the
# outcome is present more often in the class 1 than
# in class 0, e.g., 16.6% in gender class 1 versus
# 14.3% in gender class 0. This is displayed in the
# positive regression weights.
# race is the exception, where the outcome is present
# more often in race class 0 (16.3%) than in class 1
# (13.4%), displayed as negative regression weight.
# --------------------------------------

# Another side note, but important enough to address it,
# is to fully display which outcome it is which is the
# focus of the logistic regression model. For this purpose,
# I use a simulated dataset with 15 rows, binary outcome
# and a continuous predictor. The meaning of the outcome
# and predictor is irrelevant, i.e., only the technical
# detail of which outcome is modelled, is relevant.

simDat <- data.frame(
    y = rep(c(0,1), times=c(8,7)),
    x = c(142, 145, 145, 146, 150, 153, 154, 162,
          155, 156, 157, 161, 162, 163, 166))
# lgm: Logistic regression model
lgm <- glm(y ~ x, family = binomial(link="logit"), data=simDat)
# Extract one of the model results, namely the probability
# of the outcome being present.
simDat$prob <- lgm$fitted.values
# Compute the outcome which is actually modeled in logistic
# regression, namely the log odds of the probability.
simDat$logOddsProb <- log(simDat$prob/(1-simDat$prob))
simDat
# Lastly, show that the regression weight is the average
# change in the modeled outcome for each unit increase of
# the predictor:
# Select rows 9 and 10 of simDat, because the predictor
# changes there by one unit (from 155 to 156). The regression
# weight is: .3405 (rounded). Actually, the regression weight
# is: .3405161
coefficients(lgm)
# Difference in the modeled outcome between row 10 and 9:
simDat$logOddsProb[10] - simDat$logOddsProb[9]
# One more time? Select rows 4 and 5:
# Difference in predictor is 4 (150 - 146).
# Difference in modeled outcome divided by 4 = regression weight.
(simDat$logOddsProb[5] - simDat$logOddsProb[4])/4
# --------------------------------------