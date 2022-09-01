algoritmo "RepubliON-ATUALIZADO"
// Função :
// Autor : Gabriel Furlan, Lorenzo Marzola e Eduardo Araujo
// Data : 07/06/2022
// Seção de Declarações

tipo

   usuario = registro
      mail : caractere
      senha : caractere
   fimregistro

   lugar = registro
      moradia : caractere
   fimregistro


var

   vetUsuario : vetor[0..8] de usuario
   vetLugar : vetor[0..8] de lugar
   opcao, indice, quantidade, i, opcaoDesconto : inteiro
   email, senha, lugar, tentativa : caractere
   valor, total : real
   limpartela : logico


procedimento p_entrada(pr_email : caractere; pr_senha : caractere)
var
inicio
   vetUsuario.mail[indice] <- pr_email
   vetUsuario.senha[indice] <- pr_senha
   indice <- indice + 1
fimprocedimento
//------------------------------------------------------------------------1

procedimento p_lugar(pr_moradia : caractere)
var
inicio
   se (pr_moradia = "Casa") ou (pr_moradia = "casa") entao
      pr_moradia <- "Casa"
      vetLugar.moradia[i] <- pr_moradia
      i <- i + 1
   senao
      se (pr_moradia = "Apartamento") ou (pr_moradia = "apartamento") entao
         pr_moradia <- "Apartamento"
         vetLugar.moradia[i] <-  pr_moradia
         i <- i + 1
      senao
         escreval("Não Existe essa opção!!")
      fimse
   fimse
fimprocedimento
//------------------------------------------------------------------------2

funcao f_quantidade_pessoas(pessoas : inteiro) : inteiro
var
inicio

   se (pessoas = quantidade) entao
   fimse

   retorne pessoas
fimfuncao


//------------------------------------------------------------------------3

procedimento p_pagar(valorMoradia : real)
var
   varLUGAR : caractere
inicio
   varLugar <- lugar
   para i <- 0 ate 5 passo 1 faca
      se (valorMoradia < 120) entao
         escreva("Valor insuficiente!")
         interrompa
      senao
         se (quantidade = 1) e (vetLugar.moradia[i] = "Apartamento") entao
            total <- (120/quantidade)
            escreval("Há um apartamento no centro por R$120/mensal.")
            escreval("Então, como irá morar so uma pessoa, o toral ficará ", total,"R$.")
            interrompa
         senao
            se (quantidade = 1) e (vetLugar.moradia[i] = "Casa") entao
               total <- (120/quantidade)
               escreval("Há uma casa na zona leste por R$120/mensal")
               escreval("Então, como irá morar so uma pessoa, o toral ficará ", total,"R$.")
               interrompa
            senao
               se (quantidade = 2) e (vetLugar.moradia[i] = "Apartamento") entao
                  total <- (214/quantidade)
                  escreval("Há um apartamento no centro por R$214/mensal.")
                  escreval("Porém, dividindo em 2 pessoas ficará", total,"R$.")
                  interrompa
               senao
                  se (quantidade = 2) e (vetLugar.moradia[i] = "Casa") entao
                     total <- (230/quantidade)
                     escreval("Há uma casa na Zona Norte por R$230/mensal.")
                     escreval("Porém, dividindo em 2 pessoas ficará", total,"R$.")
                     interrompa
                  senao
                     se (quantidade = 3) e (vetLugar.moradia[i] = "Apartamento") entao
                        total <- (290/quantidade)
                        escreval("Há um apartamento perto da Av. Higienópolis por R$290/mensal.")
                        escreval("Porém, dividindo em 3 pessoas ficará", total,"R$.")
                        interrompa
                     senao
                        se (quantidade = 3) e (vetLugar.moradia[i] = "Casa") entao
                           total <- (310/quantidade)
                           escreval("Há uma casa perto do Shopping Aurora por R$310/mensal.")
                           escreval("Porém, dividindo em 3 pessoas ficará", total,"R$.")
                           interrompa
                        senao
                           se (quantidade = 4) e (vetLugar.moradia[i] = "Apartamento") entao
                              total <- (390/quantidade)
                              escreval("Há um apartamento no centro por R$390/mensal.")
                              escreval("Porém, dividindo em 4 pessoas ficará", total,"R$.")
                              interrompa
                           senao
                              se (quantidade = 4) e (vetLugar.moradia[i] = "Casa") entao
                                 total <- (450/quantidade)
                                 escreval("Há uma casa em Conjunto Café por R$450/mensal.")
                                 escreval("Porém, dividindo em 4 pessoas ficará", total,"R$.")
                                 interrompa
                              senao
                                 se (vetLugar.moradia[i] = "Apartamento") e (quantidade > 4) e (quantidade <= 10) e (total < valorMoradia) entao
                                    total <- (580/quantidade)
                                    escreval("Há um apartamento perto do centro por R$580/mensal.")
                                    escreval("Porém, dividindo em ", quantidade," pessoas ficará", total,"R$.")
                                    interrompa
                                 senao
                                    se (vetLugar.moradia[i] = "Casa") e (quantidade > 4) e (quantidade <= 10) entao
                                       total <- (780/quantidade)
                                       escreval("Há uma casa perto do estádio do café por R$780/mensal.")
                                       escreval("Porém, dividindo em ", quantidade," pessoas ficará", total,"R$.")
                                       interrompa
                                    senao
                                       se (vetLugar.moradia[i] = "Casa") e (quantidade > 10) e (total < valorMoradia) entao
                                          total <- (780/quantidade)
                                          escreval("Há uma casa na São joâo por R$780/mensal")
                                          escreval("Porém, dividindo em ", quantidade," pessoas ficará", total,"R$")
                                          interrompa
                                       senao
                                          se (vetLugar.moradia[i] = "Apartamento") e (quantidade > 10) entao
                                             escreval("ERRO: Não há locais no qual a mensalidade seja menor que o esperado, ou")
                                             escreval("Não há imóveis(apartamento) para alugar no qual suporte o tanto dito de pessoas.")
                                             interrompa
                                          senao
                                             se (vetLugar.moradia[i] <> varLugar) entao
                                                escreval("Não há essa opção!")
                                                escreval("Reinicie o programa.")
                                                interrompa
                                             fimse
                                          fimse
                                       fimse
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimpara
fimprocedimento

inicio
   // inicio-----------------------------------
   repita limpartela
      escreval("Iniciar Processo?(sim/nao)")
      leia(tentativa)
      se (tentativa = "sim") ou (tentativa = "Sim") ou (tentativa = "SIM") entao
         limpartela <- verdadeiro
         enquanto (opcao <> 9) faca
            escreval()
            escreval("1-Cadastrar usuario.")
            escreval("2-Em que tipo de espaço gostaria de morar?.")
            escreval("3-Quantidade de pessoas que vai morar.")
            escreval("4-Valores para alugar uma moradia")
            escreval("9-Sair")
            leia(opcao)
            escolha(opcao)
            caso 1
               escreval("Informe seu Email :")
               leia(email)
               escreval("Informe sua senha :")
               leia(senha)
               p_entrada(email,senha)
               limpatela
            caso 2
               escreval("Casa ou Apartamento?")
               leia(lugar)
               p_lugar(lugar)
               limpatela
            caso 3
               escreval("Com quantas pessoas gostaria de morar?")
               leia(quantidade)
               escreval(f_quantidade_pessoas(quantidade))
               limpatela
            caso 4
               escreval("O valor mínimo para alugar um lugar é de 120 reais, porém,")
               escreval("quanto mais pessoas morarem juntas, mais barato fica.")
               escreva("Insira o valor em reais: ")
               leia(valor)
               p_pagar(valor)
            outrocaso
               se (opcao <> 9) entao
                  escreval("Não há essa opção")
               senao
               fimse
            fimescolha
         fimenquanto
      senao
         se (tentativa = "não") ou (tentativa = "Não") ou (tentativa = "nao") ou (tentativa = "Nao") ou (tentatinva = "NÃO") ou (tentativa = "NAO") entao
            limpartela <- falso
            limpatela
            escreval("Obrigado pelo seu tempo!!")
         senao
            escreval("Não há essa opção")
            escreval()
            limpartela <- verdadeiro
         fimse
      fimse
   ate limpartela = falso
fimalgoritmo
