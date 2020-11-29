library("markovchain")
P = matrix(c(4/5,3/20,1/20,19/20,1/20,0,1,0,0),nrow = 3, byrow = T) 
mc= new("markovchain",transitionMatrix=P)
print(mc)

DistEst = steadyStates(mc)
print(DistEst)
print(3490*DistEst[1])