library("markovchain")
P = matrix(c(1,rep(0,3),0.35,0.565,0.085,0,0.2,0,0.7875,0.0125,0.05,0,0,0.95),nrow = 4, byrow = T) 
mc= new("markovchain",transitionMatrix=P)
  print(mc)


###Tiempo medio para ir a un estado recurrente
meanAbsorptionTime(mc)
###Probabilidad de llegar a cada estado
hittingProbabilities(mc)
