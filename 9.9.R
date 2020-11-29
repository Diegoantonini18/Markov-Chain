library("markovchain")
P = matrix(c(0,7/8,1/16,1/16,0,3/4,1/8,1/8,0,0,1/2,1/2,1,0,0,0),nrow = 4, byrow = T) 
mc= new("markovchain",transitionMatrix=P,states=c("E0","E1","E2","E3"))
print(mc)
#Calcular el costo promedio esperado a largo plazo
DistEst = steadyStates(mc)
print(DistEst)
## Determinar el número promedio de días de funcionamiento de la máquina
meanFirstPassageTime(mc)