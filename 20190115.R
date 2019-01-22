2^10

10000*1.03**10

cat('sin(pi/2)=', sin(pi/2), '/n')

cat('sin(pi/2)=', sin(pi/2), '\n')

cat('log10(2)=', log10(2))

cat('log10(2)=')

cat(log10(2))

cat('4**2=', 4**2)

sink('log001.txt', split=TRUE)
print(sin(pi/6))
print(cos(pi/6))
cat('t(10)的双侧0.05分位数(临界值)=', qt(1- 0.005/2, 10), '\n')
sink()

x1 <- 1:10
x1

marks <- c (3, 5, 10, 5, 6)

12345678901:12345678920

x1 + 200

2*x1
2520/x1

x2 <- x1 *3
x2
x2 - x1
sqrt(x1)

x1 <- 1:10
10000*1.03**x1

x1 <- 1:20
2**x1
2^x1

curve(x^2, -2, 2)

curve(x^2 + x +3, -3, 3)

barplot(c('男生'=10, '女生'=7), main = '男女生人数')

barplot(c('boy'=10, 'girl'=7), main = 'boy+girl')

curve(exp(x), -2, 2)
curve((x), -2, 2)

rm(tax1.tab)

tax.tab <- read.csv("data/Triage.csv", header = TRUE, as.is = TRUE)
print(head(tax.tab))

table(tax.tab[, '角色'])
table(tax.tab[, 'gender'])
table(tax.tab[,'age'], tax.tab[,'Inter'], tax.tab[,'gender'])

knitr::kable(table(tax.tab[,'Inter'], tax.tab[,'gender']))
summary(tax.tab[,'postsum'])

mean(tax.tab[,'postsum'])
sd(tax.tab[,'postsum'])
knitr::kable(table(tax.tab[,'Inter'], tax.tab[,'postsum']))

x <- c (3, 5, 10, 5, 6)
mean(x)
sd(x)

sum.of.squares <- function(x){
  sum(x^2)
}

sum.of.squares(1:5)

numeric(10)

3%/%5
5%/%3

3%%5
5%%3

x1 <- c(10,20)
x2 <- c(1, 3, 5, 7)
x1 + x2
x1*x2
log(1)
log2(2)
sqrt(c(1, 4, 6, 8.25))

x <- c (33, 55, 11)
sort(x)
rev(sort(x))
order(x)

x[order(x)]

sqrt(c(1:100))
sqrtn <- function(x,n) x^(1/n)

sqrtn(c(1:100),3)

x <- seq(0, 1, length.out = 100)
x

x <- c(77, 60, 91, 73, 85, 82, 35, 100, 66, 75)
sort(x)
order(x)
mean(x)
sd(x)
min(x)
max(x)
median(x)

sele <- (log10(15) < 2); print(sele)

is.na(c(1, NA, 3) > 2)

x1 <- 0:100
print(x1)
x2 <- x1*2*pi/100
x2
y1 <- sin(x2)
y1
plot(x2, y1, type="1")
sink()

marks <- c(10, 6, 4, 7, 8)
x <- c(1:3, 10:13)
x
x1 <- c(1,2)
x2 <- c(3,4)
x <- c(x1, x2)
x
 x <- 1234501:1234520
x 
length(x)
rep(c(1,3),2)

sink("log01182019.txt", split = TRUE)
rep(c(1,3), c(2,4))
seq(0, 2*pi, length=100)
seq(from=1, to=6)
rep(c(1,3),each=2)
rep(c(1,3),2)
paste(c("ab", "cd"), c("ef", "gh"))
paste("x", 1:3)
paste("x", 1:3, sep = "")
x <- c(1, 4, 6.25)
x[2] <- 99
x
x[c(1, 3)] <- c(11, 13)
x
x[c(1, 3, 1)]
x[x>12]
ages <- c("李明"=30, "张欢"=25, "刘颖"=28)
ages
ages <- c(30, 25, 25)
names(ages) <- c ("ab", "cd", "ef")
ages

A <- matrix(1:6, nrow = 3, ncol = 2)
A
B <- matrix(c(1, -1, 1, 1), nrow = 2, ncol = 2, byrow = TRUE)
B
C1 <- A %*% B
C1 <- B %*% A
C2 <- B +2
C2

A

A[1,]
A[,1]
A[1:3,1:2]

colnames(A) <- c("x", "y")
A[,"Y"]
B
solve(B)
solve(B, c(1,2))

cat("x=", x, "\n")

fsub <- function(x, y=0) {
  cat("x=", x, "y=", y, "\n")
  x-y
}

fsub(5,5)
fsub(5)

X <- 1:100
X <- c (1:100)
X[c(11-20)]
X[41]
X[45]
X[c(11:20)]
x <- sin((1:100)/100*2*pi)
x[c >= 0.75]

?pbinom
pbinom(2, 4, 0.3)
dbinom(2, 4, 0.9)

sum(dbinom(46:54, 100, 0.5))

dbinom(46:54, 100, 0.5)
runif(10, 1, 30)
rbinom(10, 20, 0.05)
rbinom(10, 20, 0.5)
rbinom(10, 20, 0.8)
pnorm(10, 5, 1)
dnorm(10, 5, 1)
qnorm(10, 5, 1)
rnorm(10, 5, 1)
var(c(2:12))
E(c(2:12))
x <- c(2:12)
x
var(x)
x <- rnorm(30, 10, 2)
summary(x)
hist(x)
print(x)
boxplot(x)
?rnorm
qqnorm(x)  
qqline(x)
boxplot(rt(100, 3))

#QQPLOT and line
str(triage)
str(Triage)
qqnorm(triage$gender)
qqnorm(triage$age)
qqline(triage$age)
qqnorm(triage$postave)
qqline(triage$postave)
qqnorm(triage$postsum)
qqline(triage$postsum)
boxplot(triage$postave)

x <- rexp(30)
summary(x)
hist(x)
boxplot(x)
qqnorm(x)

#正态分布转换
x <- exp(rnorm(30, 0, 1))
print(x)
hist(x); locator(1)
y <- log(x)
hist(y); locator(1)
y

#100个正态分布样本，估计总体在[5， 15]之间取值的概率
x <- rnorm(100, 10,3)
mu <- mean(x)
sig <- sd(x)
p = pnorm(15, mu, sig) - pnorm (5, mu, sig)
cat("Prob in [5, 15] = ", p, "\n")

#估计总体在[5， 10]之间取值的概率
p = pnorm(10, mu, sig) - pnorm(5, mu, sig)
cat("Prob in [5, 10] = ", p, "\n")

#最大似然函数
objf <- function(theta, x) {
  mu <- theta [1]
  s2 <- exp(theta[2])
  n <- length(x)
  res <- n*log(s2) + 1/s2*sum((x - mu)^2)
  res
}
x <- c (1:100)
cat("objf", "\n")
print(objf)

#Confidence interval
x <- c(11.67, 9.29, 10.45, 9.01, 12.67,
       16.24, 11.64, 7.73, 12.23)
t.test(x, conf.level=0.95)

# confidence interval my traige data
x <- triage$postave
t.test(x, conf.level=0.95)

#100个人中，30个人喜好看电影， 喜好看电影的人的比例p的置信度为95%的CI
prop.test(30, 100, conf.level = 0.95)

#Z==0.5, p=?
pnorm(0.5)

#正态分布 N(u, 0.1^2), mean=0.13, n=25, p=?
pt(0.13, 25)

#t-test
x <- c (490, 506, 508, 502, 498, 511, 510, 515, 512)
t.test(x, conf.level = 0.95)
t.test(x, mu=500, alternative="two.sided")

# my triage data
x <- triage$postave
y <- triage$preave
t.test(x, y, paired = TRUE, alternative = "two.sided")

# my triage data
x <- c (triage$preave, grouping(triage$X...group=="GroupA"))
y <- c (triage$preave, grouping(triage$X...group=="GroupB"))
t.test(x, y, alternative = "two.sided")

x <- c (triage$preave, grouping(triage$X...group=="GroupA"))
y <- c (triage$postave, grouping(triage$X...group=="GroupA"))
t.test(x, y, paired = TRUE, alternative = "two.sided")
print(x, y)
sum(x)
summary(x)
summary(y)

#方差的检验
x <- c (42,65,75,78,59,71,57,68,54,55)
n <- length(x)
chi2 <- (n-1)*var(x)/80
p <- 1-pchisq(chi2, n-1)
cat("Chi-squared = ", chi2, " p-value= ", p, "\n")

# two sample t-test
x <- c(20.5, 19.8, 19.7, 20.4, 20.1, 20.0, 19.0, 19.9)
y <- c(20.7, 19.8, 19.5, 20.8, 20.4, 19.6, 20.2)
t.test(x, y)
var.test(x, y)

