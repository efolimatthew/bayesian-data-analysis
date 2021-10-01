# Generative drug model
# Parameters

#Assume the underlying proportion of success of
#curing a people is 42% and that you administer the drug to 100 persons.

prop_success <- 0.42
n_persons <- 100

# Simulating data
data <- c()
for(person in 1:n_persons) {
  data[person] <- runif(1, min = 0, max = 1) < prop_success
}
data
data <- as.numeric(data) #convert to 1's and 0's
data

# Sum the number of treated persons i.e. the 1's.

#Count cured
data <- sum(data)

#----------------------------------------
# Take the binomial distribution for a spin
# Take the binomial distribution for a spin
# It turns out that the generative model you ran last exercise already has a name. It's called the binomial process or the binomial distribution. In R you can use the rbinom function to simulate data from a binomial distribution. The rbinom function takes three arguments:

# n The number of times you want to run the generative model
# size The number of trials. (For example, the number of zombies you're giving the drug.)
# prob The underlying proportion of success as a number between 0.0 and 1.0.

rbinom(n = 1, size = 100, prob = 0.42)

# rerun the generative model 200 times.
rbinom(n = 200, size = 100, prob = 0.42)
#----------------------------------------


#----------------------------------------
#Using a generative model
#he binomial distribution function. And it’s actually the case that all probability distributions, like the normal distribution or the Poisson distribution, can be seen as small generative models, and there are many more that are implemented in R. But for now, we’ll stick with the binomial distribution. So, now we have
# a generative model, where we can plug in fixed parameter values and it will
# generate simulated data for us. This could be useful if we know exactly what parameter values we want, and we want to
# predict what future unknown data might be. Say we are completely sure that our drug cures
# 7% of all zombies, but we want to know how many we’ll likely cure when we give the drug to the
# 100 zombies we have in our zombie pit.

rbinom(n = 100000, size = 100, prob = 0.07)

