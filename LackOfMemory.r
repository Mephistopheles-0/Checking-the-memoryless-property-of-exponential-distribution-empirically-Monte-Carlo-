#simulation function 
checkmemory <- function(lambda, t, s, numRepl){
  times <- rexp(numRepl, rate=lambda)
  num_t <- sum(times>t)
  cat('P(T>t) = ', num_t/numRepl, '\n')
  cat('P(T>s) = ', sum(times>s)/numRepl, '\n')
  times_t = times[times>t]
  cat('P(T>t+s) = ', sum(times_t>(t+s))/num_t,'\n')
}
#an example based on one million replications
set.seed(55555)
checkmemory(1,1,0.5,1000000)
