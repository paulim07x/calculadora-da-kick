programa {
  funcao inicio() {
    real a, b, resultado
    inteiro opcao

    faca{
      escreva("\n OPERAÇÕES \n")

      escreva(" 1) SOMA \n")
      escreva(" 2) SUBTRAÇÃO \n")
      escreva(" 3) DIVISÃO\n")
      escreva(" 4) MULTIPLICAÇÃO \n")
      escreva(" 5) SAIR\n\n")

      escreva("Escolha sua operação: ")
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
            escreva("Não é possível dividir por zero!\n")
          }senao{
            resultado = a / b
          }
          pare
          

          caso 4:
          resultado = a * b
          pare


          caso contrario:
          escreva("Por favor, selicione uma operação!")
        }
        se(b != 0){
          escreva("\n+------------------------------+\n")
          escreva("|         Resultado: " + resultado + "         |")
          escreva("\n+------------------------------+\n")
        }
        
      
      } senao se (opcao != 5){
        limpa ()
        escreva("Operação inválida! \n")
      }
     
    } enquanto (opcao != 5)
    
  }
}
