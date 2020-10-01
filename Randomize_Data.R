# Load original data
data.og = read.csv("muse.csv")

# say you have a data.frame called dat where rows are individuals # and columns are features 
# set a seed that only you know -- don’t save it anywhere 
# set.seed() # add number here
n <- nrow(data.og) 
data.fin <- data.og
for(j in 1:ncol(data.og)){ 
	shuffle_idx <- sample(1:n)
	data.fin[,j] <- data.og[shuffle_idx, j] 
	} 

# new dat now contains data formatted like your original data, but # where each column has been randomly shuffled. use this version in # your repository

# Export shuffled data
write.csv(data.fin,"/Users/Shauna/Documents/Emory/Courses/Fall_2020/Data_Science_Toolkit/Homework/HW4//muse_randomized.csv", row.names = FALSE)