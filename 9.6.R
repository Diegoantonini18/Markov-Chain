library("markovchain")
P = matrix(c(.3,.4,.3,.4,.25,.35,.2,.3,.5),nrow = 3, byrow = T) 
print(P)
mc = new("markovchain",transitionMatrix=P,states=c("X","Y","Z"),name="Cadena 1") 
print(mc)
#¿Cuál es la probabilidad de que un poseedor de un televisor X adquiera un Z al cabo de dos
#compras?

a=(mc^2)
print(a)

##¿Cuál es la probabilidad de que el dueño de un X compre nuevamente un televisor de la
##misma marca luego de tres transacciones?
b=(mc^3)
print(b)

##¿Cuál será el porcentaje de participación en el mercado a largo plazo?
DistEst = steadyStates(mc)
print(DistEst)

##¿Cuál es el número esperado de compras que transcurrirán antes que el actualmente
##poseedor de un televisor X adquiera un Z?
meanFirstPassageTime(mc)