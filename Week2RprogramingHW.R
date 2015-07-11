# Question 1

i1 <- 1
i2 <- 1
i3 <- 1
numn <- 1
numr <- 1
numk <- 1
num <- 1

n = 5
r = 2
k = n-r

while (i1 <= n)
{
  numn <- i1 * numn
  i1 <- i1 + 1
  
}

while (i2 <= r){
  numr <- i2 * numr
  i2 <- i2 + 1
}
while (i3 <= k){
  numk <- i3 * numk
  i3 <- i3 + 1
}

num = numn / (numr*numk)
num


