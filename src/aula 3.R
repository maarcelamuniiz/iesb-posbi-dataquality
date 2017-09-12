# Aula 3
1+1
3*4
4^2
21 %/% 4
21 %%4
1:10
plot(1:10)
hist(rnorm(1000))
x<-100
y<-23
x+y
x*y
x/y
vetor <- c(1,4,5,10,2,x,y)
numero<- c(546.90,10,789)
inteiro <-c(1L,98L)
complexo <-c(20i,2+9i)
texto <-c("meu", "vetor", "com", "varias","palavras")
logico<-c(TRUE,FALSE,TRUE)
as.character(numero)
as.numeric(logico)
as.numeric(texto)
as.numeric("129873")
str(x)
str(y)
str(vetor)
str(numero)
str(inteiro)
str(texto)
str(complexo)
length(x)
length(y)
length(1:100)
length(texto)
x<-c(1,3,-5,10)
abs(x)
exp(x)
sqrt(x)
factorial(3)
choose(20,2)
sqrt(24)
mean(x)
sum(x)
prod(x)
cumsum(x)
cumprod(254)
cumprod(x)
x<-c(2-5*9/3)
sum(x)
prod(x)
cumsum(x)
min(x)
max(x)
x<-c(1,3,-5,10)
var(x)
sd(x)
median(x)
min(x)
max(x)
1==0
1!=0
1>0
1<0
!1<0
set.seed(1)
horas_trabalhadas<-rnorm(1000,8,0.5)
valor_por_hora <-rnorm(1000,30,2)
horas_trabalhadas
str(x)
str(horas_trabalhadas)
str(valor_por_hora)
length(horas_trabalhadas)
length(valor_por_hora)
min(horas_trabalhadas)
max(horas_trabalhadas)
min(valor_por_hora)
max(valor_por_hora)
vetor<-valor_por_hora*horas_trabalhadas
min(vetor)
max(vetor)
sum(vetor)
class(horas_trabalhadas)
getwd()
write.csv2()
mtcars
write.csv2(mtcars, "mtcars.csv")
str(mtcars)
carros<-read.csv
carros<-read.csv("mtcars.csv", dec=",",sep=";")
censo<-read.csv2("data/Censo.csv", stringsAsFactors = FALSE)
str(censo)
names(censo)
View(censo)
length(censo)
nrow(censo)
censo[3]
censo$Nome
censo["Nome"]
censo[c(2,3)]
censo[c(censo$Salario, censo$AnosEstudo)]
censo[c("Salario","AnosEstudo")]
max(censo$Altura.cm)
altura<-censo$Altura.cm
summary(altura)
media.altura<-mean(altura)
desvio.altura<-sd(altura)
altura>media.altura+4*desvio.altura
gigantes<-altura[altura>media.altura+4*desvio.altura]

str(censo)
x = 1.20
censo$Altura.cm/100
censo$IMC = censo$Peso.kg/((censo$Altura.cm/100)^2)
View(censo)
summary(censo$IMC)
head(censo)
tail(censo)
censo[1,10]
censo[1:10,]
censo[1:10,"Nome"]
censo[1:10,c("Nome","CPF")]
censo[1,c("Nome", "CPF")]
library(dplyr)
install.packages("dplyr")
fumantes.por.sexo <- censo %>%
  filter(Fuma == 1) %>%
  group_by(Sexo) %>%
  summarise(quantidade=n())
fumantes.por.sexo
boxplot(censo$Altura.cm)
barplot(censo$Altura.cm)
hist(censo$Altura.cm, breaks = 100, col = "purple")
