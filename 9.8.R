library("markovchain")
P = matrix(c(1,rep(0,3),0.4,0.6,0,0,0.1,0.3,0.6,0,0,0.1,0.3,0.6),nrow = 4, byrow = T) 
mc= new("markovchain",transitionMatrix=P,states=c("0","1","2","3"))
print(mc)

#la probabilidad de que al cabo de dos meses se haya agotado el stock
a=(mc^2)
print(a)

#la probabilidad de que al cabo de cuatro meses haya dos o más de dos repuestos en stock
a=(mc^4)
print(a)
##0,388

# el número promedio de meses que transcurren hasta agotar el stock
meanAbsorptionTime(mc)

DistEst = steadyStates(mc)
print(DistEst)