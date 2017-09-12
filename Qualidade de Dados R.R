unique(censo$DataNasc)
unique(censo$CodReg)
is.na(censo$CategProf)
unique(censo$Sexo)
#Não existe padronização
plot(as.factor(censo$Sexo))
hist(as.numeric(is.na(censo$CategProf)))
summary(censo$Nome)
?summary(censo$CPF)
#? (Interrogação) descrição da função
summary(censo)
max(censo$Altura.cm)
min(censo$Altura.cm)
is.numeric(censo$CodMunic)
is.character(censo$CodMunic)
is.logical(censo$CodMunic)
is.logical(censo)

source("src/principal.R")
censo <- reformata_censo(censo)
summary(censo$DataNasc)
class(censo$DataNasc)

class(censo$CPF)

x <- c(TRUE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE)
is.logical(x)
censo %>%
  group_by(Nome) %>%
  summarise(frequencia=n()) %>%
  arrange(desc(frequencia))
merge(censo$CPF)
merge("CPF")
any(censo$CPF =="")

censo %>%
  filter(CPF =="") %>%
  summarise(n())
  