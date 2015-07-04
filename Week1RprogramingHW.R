# Question 1

i <- 1
num <- 1
fact = 12

while (i <= fact)
{
  num <- i * num
  i <- i + 1
}
num

# Question 2

vec1 <- c(4:10)
vec2 <- vec1*5
vec2

#Question 3

a <- 1
b <- -4
c <- 4

x1 <- (-1 * b + (( b ^ 2 - (4 * a * c))^.5)) / (2 * a)
x2 <- (-1 * b - (( b ^ 2 - (4 * a * c))^.5)) / (2 * a)
print(c(x1, x2))