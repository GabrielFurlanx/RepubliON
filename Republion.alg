algoritmo "Republion"
// Fun��o :
// Autor : Gabriel Furlan, Lorenzo Marzola e Eduardo Araujo
// Data : 07/06/2022
// Se��o de Declara��es
var

quantidade, pagar, total, morada : Real

inicio


escreval("Em que tipo de espa�o gostaria de morar? ")

escreval("1-Casa")
escreval("2-apartamento")
leia(morada)

se (morada>2) entao
   escreval("N�o h� essa op��o!")
   escreval("Reinicie o programa.")
senao
   escreval("Com quantas pessoas voc� gostaria de compartilhar o local no qual escolher�? ")
   leia(quantidade)

   se (quantidade = 1) entao
      se (quantidade = 2) entao
         se (quantidade = 3) entao
            se (quantidade = 4) entao
               (morada=casa ou morada=apartamento)
            senao
               (quantidade >= 5)
            fimse
         fimse
      fimse
   fimse

   escreval("E qual � o pre�o m�ximo que voc� ir� pagar mensalmente? (Em reais) ")
   escreval("(Pre�o m�nimo 120 reais).")
   leia(pagar)

   se (pagar < 120) entao
      escreva("Valor insuficiente!")
   senao
      escolha(quantidade)

      caso 1
         se (morada=2) entao
            total <- (120/quantidade)
            escreval("H� um apartamento no centro por R$120/mensal.")
            escreval("Ent�o, como ir� morar so uma pessoa, o toral ficar� ", total,"R$.")
         senao
            total <- (120/quantidade)
            escreval("H� uma casa na zona leste por R$120/mensal")
            escreval("Ent�o, como ir� morar so uma pessoa, o toral ficar� ", total,"R$.")
         fimse

      caso 2
         se (morada=2) entao
            total <- (214/quantidade)
            escreval("H� um apartamento no centro por R$214/mensal.")
            escreval("Por�m, dividindo em 2 pessoas ficar�", total,"R$.")
         senao
            total <- (230/quantidade)
            escreval("H� uma casa na Zona Norte por R$230/mensal.")
            escreval("Por�m, dividindo em 2 pessoas ficar�", total,"R$.")
         fimse

      caso 3
         se (morada=2) entao
            total <- (290/quantidade)
            escreval("H� um apartamento perto da Av. Higien�polis por R$290/mensal.")
            escreval("Por�m, dividindo em 3 pessoas ficar�", total,"R$.")
         senao
            total <- (310/quantidade)
            escreval("H� uma casa perto do Shopping Aurora por R$310/mensal.")
            escreval("Por�m, dividindo em 3 pessoas ficar�", total,"R$.")
         fimse

      caso 4
         se (morada=2) entao
            total <- (390/quantidade)
            escreval("H� um apartamento no centro por R$390/mensal.")
            escreval("Por�m, dividindo em 4 pessoas ficar�", total,"R$.")
         senao
            total <- (450/quantidade)
            escreval("H� uma casa em Conjunto Caf� por R$450/mensal.")
            escreval("Por�m, dividindo em 4 pessoas ficar�", total,"R$.")
         fimse

      caso 5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20 ate 100
         se (morada=2) e (quantidade > 4) e (quantidade <= 10) e (total < pagar) entao
            total <- (580/quantidade)
            escreval("H� um apartamento perto do centro por R$580/mensal.")
            escreval("Por�m, dividindo em ", quantidade," pessoas ficar�", total,"R$.")
         senao
            se (morada=1) e (quantidade > 4) e (quantidade <= 10) entao
               total <- (780/quantidade)
               escreval("H� uma casa perto do est�dio do caf� por R$780/mensal.")
               escreval("Por�m, dividindo em ", quantidade," pessoas ficar�", total,"R$.")
            senao
               se (morada=1) e (quantidade > 10) e (total < pagar) entao
                  total <- (780/quantidade)
                  escreval("H� uma casa na S�o jo�o por R$780/mensal")
                  escreval("Por�m, dividindo em ", quantidade," pessoas ficar�", total,"R$")
               senao
                  escreval("ERRO: N�o h� locais no qual a mensalidade seja menor que o esperado, ou")
                  escreval("N�o h� im�veis(apartamento) para alugar no qual suporte o tanto dito de pessoas.")
               fimse
            fimse
         fimse
      fimescolha
   fimse
fimse
fimalgoritmo
