library("markovchain")
P = matrix(c(.5,.5,rep(0,3),.25,.5,.25,rep(0,3),.25,.5,.25,rep(0,3),0.25,0.5,0.25,rep(0,3),.5,0.5),nrow = 5, byrow = T) 
mc= new("markovchain",transitionMatrix=P)
print(mc)

po=c(0,1,0,0,0)
p4=po*mc^4
print(p4)


a=c(6,8,10,12,14)
print(a)
print(p4)
b=a*p4
print(rowSums(b))
