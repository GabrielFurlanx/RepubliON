algoritmo "Republion"
// Função :
// Autor : Gabriel Furlan, Lorenzo Marzola e Eduardo Araujo
// Data : 07/06/2022
// Seção de Declarações
var

quantidade, pagar, total, morada : Real

inicio


escreval("Em que tipo de espaço gostaria de morar? ")

escreval("1-Casa")
escreval("2-apartamento")
leia(morada)

se (morada>2) entao
   escreval("Não há essa opção!")
   escreval("Reinicie o programa.")
senao
   escreval("Com quantas pessoas você gostaria de compartilhar o local no qual escolherá? ")
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

   escreval("E qual é o preço máximo que você irá pagar mensalmente? (Em reais) ")
   escreval("(Preço mínimo 120 reais).")
   leia(pagar)

   se (pagar < 120) entao
      escreva("Valor insuficiente!")
   senao
      escolha(quantidade)

      caso 1
         se (morada=2) entao
            total <- (120/quantidade)
            escreval("Há um apartamento no centro por R$120/mensal.")
            escreval("Então, como irá morar so uma pessoa, o toral ficará ", total,"R$.")
         senao
            total <- (120/quantidade)
            escreval("Há uma casa na zona leste por R$120/mensal")
            escreval("Então, como irá morar so uma pessoa, o toral ficará ", total,"R$.")
         fimse

      caso 2
         se (morada=2) entao
            total <- (214/quantidade)
            escreval("Há um apartamento no centro por R$214/mensal.")
            escreval("Porém, dividindo em 2 pessoas ficará", total,"R$.")
         senao
            total <- (230/quantidade)
            escreval("Há uma casa na Zona Norte por R$230/mensal.")
            escreval("Porém, dividindo em 2 pessoas ficará", total,"R$.")
         fimse

      caso 3
         se (morada=2) entao
            total <- (290/quantidade)
            escreval("Há um apartamento perto da Av. Higienópolis por R$290/mensal.")
            escreval("Porém, dividindo em 3 pessoas ficará", total,"R$.")
         senao
            total <- (310/quantidade)
            escreval("Há uma casa perto do Shopping Aurora por R$310/mensal.")
            escreval("Porém, dividindo em 3 pessoas ficará", total,"R$.")
         fimse

      caso 4
         se (morada=2) entao
            total <- (390/quantidade)
            escreval("Há um apartamento no centro por R$390/mensal.")
            escreval("Porém, dividindo em 4 pessoas ficará", total,"R$.")
         senao
            total <- (450/quantidade)
            escreval("Há uma casa em Conjunto Café por R$450/mensal.")
            escreval("Porém, dividindo em 4 pessoas ficará", total,"R$.")
         fimse

      caso 5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20 ate 100
         se (morada=2) e (quantidade > 4) e (quantidade <= 10) e (total < pagar) entao
            total <- (580/quantidade)
            escreval("Há um apartamento perto do centro por R$580/mensal.")
            escreval("Porém, dividindo em ", quantidade," pessoas ficará", total,"R$.")
         senao
            se (morada=1) e (quantidade > 4) e (quantidade <= 10) entao
               total <- (780/quantidade)
               escreval("Há uma casa perto do estádio do café por R$780/mensal.")
               escreval("Porém, dividindo em ", quantidade," pessoas ficará", total,"R$.")
            senao
               se (morada=1) e (quantidade > 10) e (total < pagar) entao
                  total <- (780/quantidade)
                  escreval("Há uma casa na São joâo por R$780/mensal")
                  escreval("Porém, dividindo em ", quantidade," pessoas ficará", total,"R$")
               senao
                  escreval("ERRO: Não há locais no qual a mensalidade seja menor que o esperado, ou")
                  escreval("Não há imóveis(apartamento) para alugar no qual suporte o tanto dito de pessoas.")
               fimse
            fimse
         fimse
      fimescolha
   fimse
fimse
fimalgoritmo
