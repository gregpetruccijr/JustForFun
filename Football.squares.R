rm(list=ls())

grid<- matrix(nrow=10, ncol=10)
colnames(grid)<-sample(0:9)
rownames(grid)<-sample(0:9)
grid<- as.data.frame(grid)


people<- c("Greg", "Eric", "Luke", "Bryan", "Colin")

n.name<- length(people)
math<-floor(100/n.name)

zip <- 1

for(sss in 1:length(people)){
  
  if(zip == 1){
  people.one<- c(rep(people[sss], math)) 
  } else{
    sample<- c(rep(people[sss], math))
    people.one <- c(people.one, sample)
  }
  zip <- zip + 1
}

counter <- 1


for (iii in 1:20000)
  {
  dims.1<- sample(0:9, 1)
  dims.2<- sample(0:9, 1)
  row.fill<- paste(dims.1[1])
  col.fill <- paste(dims.2[1])
  
 if (is.na(grid[row.fill, col.fill])==TRUE){
   grid[row.fill, col.fill] <- print(people.one[counter]) 
   counter<- counter + 1
 }  else {
  grid[row.fill, col.fill] <- grid[row.fill, col.fill] 
  }
}

print(grid)


