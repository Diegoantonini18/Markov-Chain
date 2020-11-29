library("markovchain")
P = matrix(c(.3,.6,.1,.1,.6,.3,.05,.4,.55),nrow = 3, byrow = T) 
print(P)
mc = new("markovchain",transitionMatrix=P,states=c("buena","regular","mala"),name="Cadena 1") 
print(mc)
###### 
absorbingStates(mc)
transientStates(mc)
absorbingStates(mc)
plot(mc)

transitionProbability(object = mc,t0 = "buena",t1 = "buena")
#matriz de transicion en 5 pasos


##### Punto A
xo=c(.3,.6,.1)

n7=xo*(mc^7)
print(n7)

#### Punto B

DistEst = steadyStates(mc)
print(DistEst)

#### Punto C
### Recuerde que los tiempos medio de recurrencia son los inversos multiplicativos de la distribución estacionaria y pueden ser computados facilmente.
### Tiempo medio de recurrencia
meanFirstPassageTime(mc)
