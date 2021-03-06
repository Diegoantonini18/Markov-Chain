library("markovchain")
P = matrix(c(.3,.4,.3,.4,.25,.35,.2,.3,.5),nrow = 3, byrow = T) 
print(P)
mc = new("markovchain",transitionMatrix=P,states=c("X","Y","Z"),name="Cadena 1") 
print(mc)
#�Cu�l es la probabilidad de que un poseedor de un televisor X adquiera un Z al cabo de dos
#compras?

a=(mc^2)
print(a)

##�Cu�l es la probabilidad de que el due�o de un X compre nuevamente un televisor de la
##misma marca luego de tres transacciones?
b=(mc^3)
print(b)

##�Cu�l ser� el porcentaje de participaci�n en el mercado a largo plazo?
DistEst = steadyStates(mc)
print(DistEst)

##�Cu�l es el n�mero esperado de compras que transcurrir�n antes que el actualmente
##poseedor de un televisor X adquiera un Z?
meanFirstPassageTime(mc)