setwd("~/bio/exercise/Biocomp-Fall2018-181012-Exercise7/")
iris=read.csv(file="iris.csv",header = T,stringsAsFactors = F)

#1 
# method 1: use while loop

odd_row <- function(file){ # define the function
  i=1
  oddDF=data.frame() # open an empty dataframe
  while(2*i-1<(nrow(file))){  # set the range of i
    oddRow=file[2*i-1,] # 2i-1 refers to the odd number
    oddDF=rbind(oddDF,oddRow) 
    i=i+1
  }
  return(oddDF)
}
odd_row(iris) # test 

# method 2: without using while loop
odd_row <- function(file){
  row=(1:nrow(file))
  oddnumber=(row%%2==1) # select the odd number
  sortRow=file[oddnumber,] # select the odd rows
  return(sortRow)
  }
odd_row(iris) # test


#2

#2.1
countSpecies <- function(species) {
  numSpecies=sum(iris$Species==species) # count the number of given species
  return(numSpecies)
}

countSpecies("setosa") # test

# 2.2
rowSort <- function(number){ 
  sort_row=iris[iris$Sepal.Width>number,]  
  return(sort_row)
}

rowSort(3.5) # test

# 2.3
sortSpecies <- function(species){
  sort_species=iris[iris$Species==species,]
  write.csv(sort_species,file=paste(species, ".csv",sep=""), sep=",")
} # write sort_species into a file, using "," as delimiter

sortSpecies("setosa")  # test1
sortSpecies("versicolor") # test2



