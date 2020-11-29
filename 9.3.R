library("markovchain")
P = matrix(c(1/3,1/3,1/3,2/3,1/6,1/6,1/2,1/2,0),nrow = 3, byrow = T) 
mc= new("markovchain",transitionMatrix=P)
print(mc)

DistEst = steadyStates(mc)
print(DistEst)