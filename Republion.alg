algoritmo "RepubliON-ATUALIZADO"
// Fun��o :
// Autor : Gabriel Furlan, Lorenzo Marzola e Eduardo Araujo
// Data : 07/06/2022
// Se��o de Declara��es

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
         escreval("N�o Existe essa op��o!!")
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
            escreval("H� um apartamento no centro por R$120/mensal.")
            escreval("Ent�o, como ir� morar so uma pessoa, o toral ficar� ", total,"R$.")
            interrompa
         senao
            se (quantidade = 1) e (vetLugar.moradia[i] = "Casa") entao
               total <- (120/quantidade)
               escreval("H� uma casa na zona leste por R$120/mensal")
               escreval("Ent�o, como ir� morar so uma pessoa, o toral ficar� ", total,"R$.")
               interrompa
            senao
               se (quantidade = 2) e (vetLugar.moradia[i] = "Apartamento") entao
                  total <- (214/quantidade)
                  escreval("H� um apartamento no centro por R$214/mensal.")
                  escreval("Por�m, dividindo em 2 pessoas ficar�", total,"R$.")
                  interrompa
               senao
                  se (quantidade = 2) e (vetLugar.moradia[i] = "Casa") entao
                     total <- (230/quantidade)
                     escreval("H� uma casa na Zona Norte por R$230/mensal.")
                     escreval("Por�m, dividindo em 2 pessoas ficar�", total,"R$.")
                     interrompa
                  senao
                     se (quantidade = 3) e (vetLugar.moradia[i] = "Apartamento") entao
                        total <- (290/quantidade)
                        escreval("H� um apartamento perto da Av. Higien�polis por R$290/mensal.")
                        escreval("Por�m, dividindo em 3 pessoas ficar�", total,"R$.")
                        interrompa
                     senao
                        se (quantidade = 3) e (vetLugar.moradia[i] = "Casa") entao
                           total <- (310/quantidade)
                           escreval("H� uma casa perto do Shopping Aurora por R$310/mensal.")
                           escreval("Por�m, dividindo em 3 pessoas ficar�", total,"R$.")
                           interrompa
                        senao
                           se (quantidade = 4) e (vetLugar.moradia[i] = "Apartamento") entao
                              total <- (390/quantidade)
                              escreval("H� um apartamento no centro por R$390/mensal.")
                              escreval("Por�m, dividindo em 4 pessoas ficar�", total,"R$.")
                              interrompa
                           senao
                              se (quantidade = 4) e (vetLugar.moradia[i] = "Casa") entao
                                 total <- (450/quantidade)
                                 escreval("H� uma casa em Conjunto Caf� por R$450/mensal.")
                                 escreval("Por�m, dividindo em 4 pessoas ficar�", total,"R$.")
                                 interrompa
                              senao
                                 se (vetLugar.moradia[i] = "Apartamento") e (quantidade > 4) e (quantidade <= 10) e (total < valorMoradia) entao
                                    total <- (580/quantidade)
                                    escreval("H� um apartamento perto do centro por R$580/mensal.")
                                    escreval("Por�m, dividindo em ", quantidade," pessoas ficar�", total,"R$.")
                                    interrompa
                                 senao
                                    se (vetLugar.moradia[i] = "Casa") e (quantidade > 4) e (quantidade <= 10) entao
                                       total <- (780/quantidade)
                                       escreval("H� uma casa perto do est�dio do caf� por R$780/mensal.")
                                       escreval("Por�m, dividindo em ", quantidade," pessoas ficar�", total,"R$.")
                                       interrompa
                                    senao
                                       se (vetLugar.moradia[i] = "Casa") e (quantidade > 10) e (total < valorMoradia) entao
                                          total <- (780/quantidade)
                                          escreval("H� uma casa na S�o jo�o por R$780/mensal")
                                          escreval("Por�m, dividindo em ", quantidade," pessoas ficar�", total,"R$")
                                          interrompa
                                       senao
                                          se (vetLugar.moradia[i] = "Apartamento") e (quantidade > 10) entao
                                             escreval("ERRO: N�o h� locais no qual a mensalidade seja menor que o esperado, ou")
                                             escreval("N�o h� im�veis(apartamento) para alugar no qual suporte o tanto dito de pessoas.")
                                             interrompa
                                          senao
                                             se (vetLugar.moradia[i] <> varLugar) entao
                                                escreval("N�o h� essa op��o!")
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
            escreval("2-Em que tipo de espa�o gostaria de morar?.")
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
               escreval("O valor m�nimo para alugar um lugar � de 120 reais, por�m,")
               escreval("quanto mais pessoas morarem juntas, mais barato fica.")
               escreva("Insira o valor em reais: ")
               leia(valor)
               p_pagar(valor)
            outrocaso
               se (opcao <> 9) entao
                  escreval("N�o h� essa op��o")
               senao
               fimse
            fimescolha
         fimenquanto
      senao
         se (tentativa = "n�o") ou (tentativa = "N�o") ou (tentativa = "nao") ou (tentativa = "Nao") ou (tentatinva = "N�O") ou (tentativa = "NAO") entao
            limpartela <- falso
            limpatela
            escreval("Obrigado pelo seu tempo!!")
         senao
            escreval("N�o h� essa op��o")
            escreval()
            limpartela <- verdadeiro
         fimse
      fimse
   ate limpartela = falso
fimalgoritmo
