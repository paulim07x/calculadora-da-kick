programa {
  funcao inicio() {
    real a, b, resultado
    inteiro opcao

    faca{
      escreva("\n OPERA��ES \n")

      escreva(" 1) SOMA \n")
      escreva(" 2) SUBTRA��O \n")
      escreva(" 3) DIVIS�O\n")
      escreva(" 4) MULTIPLICA��O \n")
      escreva(" 5) SAIR\n\n")

      escreva("Escolha sua opera��o: ")
      leia(opcao)
      limpa()

      se ((opcao < 5) e (opcao > 0)){
        escreva("Agora digite o primeiro valor: ")
        leia(a)
        limpa()

        escreva("Agora digite o segundo valor: ")
        leia(b)
        limpa()

        escolha (opcao)
        {
          caso 1:
          resultado = a + b
          pare

          caso 2:
          resultado = a - b
          pare

          caso 3:
          se (b == 0){
            escreva("N�o � poss�vel dividir por zero!\n")
          }senao{
            resultado = a / b
          }
          pare
          

          caso 4:
          resultado = a * b
          pare


          caso contrario:
          escreva("Por favor, selicione uma opera��o!")
        }
        se(b != 0){
          escreva("\n+------------------------------+\n")
          escreva("|         Resultado: " + resultado + "         |")
          escreva("\n+------------------------------+\n")
        }
        
      
      } senao se (opcao != 5){
        limpa ()
        escreva("Opera��o inv�lida! \n")
      }
     
    } enquanto (opcao != 5)
    
  }
}
