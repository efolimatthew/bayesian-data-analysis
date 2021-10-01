#Checking Ads click
# How many visitors could your site get?
# To get more visitors to your website you are considering paying for an ad to be shown 100 times on a popular social media site. According to the social media site, their ads get clicked on 10% of the time.
# Parameters
n_samples <- 100000
n_ads_shown <- 100
proportion_clicks <- 0.1
n_visitors <- rbinom(n_samples, size = n_ads_shown, 
                     prob = proportion_clicks)

# Visualize n_visitors
hist(n_visitors)

# Eyeballing the plot, the number of visitors will be more than 5 with a 90% probability.

# Representing uncertainty with priors
n_samples <- 100000
n_ads_shown <- 100
proportion_clicks <- rbinom(n_samples, size = n_ads_shown, 
                            prob = proportion_clicks)

# Adding a prior to the model
# You're not so sure that your ad will get clicked on exactly 10% of the time. Instead of assigning proportion_clicks a single value you are now going to assign it a large number of values drawn from a probability distribution.
# For now, we are going to assume that it's equally likely that proportion_clicks could be as low as 0% or as high as 20%. These assumptions translate into a uniform distribution which you can sample from in R like this:
x <- runif(n = n_samples, min = 0.0, max = 0.2)

n_samples <- 100000
n_ads_shown <- 100

# Update proportion_clicks
proportion_clicks <- runif(n = n_samples, min = 0.0, max = 0.2)

n_visitors <- rbinom(n = n_samples, size = n_ads_shown, prob = proportion_clicks)

#Because the rbinom function is vectorized the first value of proportion_clicks is used to sample the first value in n_visitors, the second value in proportion_clicks is used for the second in n_visitors, and so on. The result is that the samples in n_visitors now also incorporate the uncertainty in what the underlying proportion of clicks could be.
#First, visualize the uncertainty in proportion_clicks using the hist function.

# Visualize proportion clicks
hist(proportion_clicks)

# Visualize n_visitors
hist(n_visitors)

# There is 70% probability that over 5 people will click on the link.


#-------------------------------------------
# Bayesian models and conditioning




