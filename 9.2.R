library("markovchain")
P = matrix(c(1/6,1/3,1/6,1/3,1/6,1/6,1/3,1/3,1/3,1/3,1/6,1/6,1/3,1/6,1/3,1/6),nrow = 4, byrow = T) 
print(P)
mc= new("markovchain",transitionMatrix=P)
print(mc)
### Punto A
DistEst = steadyStates(mc)
print(DistEst)