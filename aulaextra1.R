# Programa
# Criando uma variavel

a <- 10
b <- 10
a <- "heitor"
b <- "joao"
# utilizaremos <- na criacao de variaveis
# e na utilizaçao de funcoes
# variavel <- valor
c <- c("heitor", "joao")
a <- c(10, 5, 15, 20)
a [2]

?summary
summary(a)
summary(c)

# funcao de um pacote nao padrao

install.packages("stringr")
library(stringr)
??stringr
??stringr::str_c

nome <- "joao"
sobrenome <- "welson"

nomeCompleto <- stringr::str_c(nome,sobrenome)
nomeCompleto
nomeCompleto <- stringr::str_c(nome," ",sobrenome)
nomeCompleto


# DADOS NUMERICOS:

# ARMAZEAMENTO NUMÉRICO:

salario <- 3450.89
horas <- 220
sh <- salario/horas
sh <- as.integer (salario/horas)
sh <- round(salario/horas)

numero2 <- c(salario, horas)
numero2


# Armazenamento de caracteres

nome1 <- "Lilian Beatriz"
nome2 <- "Maria Eduarda"

casalnerd <- stringr::str_c(nome1," ",nome2)
casalnerd

idade <- "22"

nomes <- c(nome1,nome2)

nome
nomes[ 1 ]
nomes[2]

# Armazenamento de fatores

CargaHoraria <- c(220,220, 150,100,100)
summary(CargaHoraria)

CargaHoraria <- as.factor(c(CargaHoraria))
summary(CargaHoraria)

CargaHoraria <- as.factor(c(220,220,150,100,100))
summary(CargaHoraria)
mode (CargaHoraria)
class (CargaHoraria)

# Armazenamento de Dados logicos

L1 <- salario > horas
L1

L2 <- salario < horas
L2

Logico <- TRUE
Logico1 <- "TRUE" # nao é uma variavel do tipo logico, tudo o que tem "" se
                  # se torna cactere
Logico2 <- c(1, TRUE, 3)

# Vetores - Estrutura basica de dados
# Todas as variavies até agora sao vetores

# vetor de caracter
is.vector(nomes)
mode(nomes)


# vetor numerico
is.vector(horas)
mode(horas)


# vetor logico
is.vector(L1)
mode(L1)

# Listas - vetor com tipos de dados diferente

a <- c(1, 2, 3, 4, 5)
b <- c(1, "2", 3, 4, 5)
a
b

is.list(a)
is.list(b)

is.vector(a)
is.vector(b)

b <- as.numeric(b)
#Criar uma lista para colocar dados numericado e dados char

b <- list(10, "2", 8)
is.list(b)
mode(b)
str(b)

e <- list(c(10, 6, 51, 5), "2",8)
str(e)
e[[1]] [3]

# MATRIZES - duas dimensões um tipo de dado

m <- matrix(1:9, nrow = 3) #informar o numero de linhas e o programa
# automaticamente informa o numero de colunas em base na quantidade de dados
# 1:9 esta informando para puxar do numero 1 a 9
m
mode(m)
class(m)
# m [linha, coluna]
m [1,3]
m [1,3] <- 'a'# colocando o a no lugar de 7 e todos os dados se tornou caractere


# DATA FRAMES

#definir uma area de trabalho
setwd("C:/Users/ADM/OneDrive/Documentos/arquivos/script mysql")

# Importando uma base de dados
df <- read.table("TabelaVerdade.csv")

# Analisando DataFrames 
View # campo: obs no environment significa linhas 

#Tipos de Dados 
str(df)
summary(df)

# Selecionando variaveis
df
df[1]
df $DIA_SEM

col1 <- df[1]
col2 <- df$DIA_SEM

class(df$DIA_SEM)
class(col1)
class(col2)
