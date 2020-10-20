cuisines = restaurants$Cuisines

# How much do people spend on delivery?
restaurants$avgcosts = as.numeric(gsub("\\$", "", restaurants$Average_Cost))
costs = na.omit(restaurants$avgcosts)
mean(costs)
restaurants


# What percentage of restaurants are fast food restaurants?

fastfood = c()
dim(restaurants)
dimnames(restaurants)
 # 2019 restaurants
N = 2019
for (i in 1:2019){
  if (grepl("Fast", restaurants[i,"Cuisines"], fixed = T) == T){
    fastfood = c(fastfood, i)
  }
}

percent.of.fastfood = length(fastfood)/N
# 27.79%

# What does the distribution of fast food restaurants look like?
qqnorm(fastfood)
qqline(fastfood)
hist(fastfood)
# Doesn't follow a normal distribution


# What does the distribution of average costs look like?
hist(costs, freq = F)

# Most delivery orders cost around $20.


boxplot(costs)
# This boxplot shows that the median is pretty high within the inner 50% of the costs,
# and there are many outliers that cost much more than that.
