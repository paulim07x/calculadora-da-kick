programa {
inclua biblioteca Tipos --> t
inclua biblioteca Texto --> tx

funcao logico EhNumeroValido(cadeia retorno)
	{
    //criei uma função que valida se a cadeia pode ser um número válido
    caracter digito
    inteiro tamanho = tx.numero_caracteres(retorno) //pego o tamanho da cadeia
		para (inteiro indice = 0; indice <= tamanho - 1; indice++)//faço uma estrutura de repeticao para percorrer cada digito
      {
        // Obtemos o caracter na posição indicada pelo índice
        digito = tx.obter_caracter(retorno, indice)
        //valido: se é -(negativo) só deve ser falso se ele n tiver na primeira posicao e se tiver o tamanho do retorno deve ser maior que 1; 
        logico ehNegativoInvalido = ((digito == '-' e indice != 0) ou (digito == '-' e tamanho == 1))
        logico ehDecimalInvalido = ((digito == '.' e indice == (tamanho-1)) ou (digito == '.' e indice == 0))
        logico naoEhNumero = (digito != 0 e digito != 1 e digito != 2 e digito != 3 e digito != 4 e digito != 5 e digito != 6 e digito != 7 e digito != 8 e digito != 9 e digito != '.' e digito != '-')
        se ( naoEhNumero ou ehDecimalInvalido ou ehNegativoInvalido)
        {
          //aqui confiro se o digito é difente dos numeros 0-9 e do ponto (.) para numeros decimais
          retorne falso
          pare
        }
      }
      retorne verdadeiro
	}
  funcao inicio() {
    real a, b, resultado
    inteiro opcao
    cadeia retorno, valorA, valorB

    faca{
      opcao = 0
      escreva("\n OPERAÇÕES \n")

      escreva(" 1) SOMA \n")
      escreva(" 2) SUBTRAÇÃO \n")
      escreva(" 3) DIVISÃO\n")
      escreva(" 4) MULTIPLICAÇÃO \n")
      escreva(" 5) SAIR\n\n")

      escreva("Escolha sua operação: ")
      leia(retorno)
      limpa()

      //se retornar verdadeiro ele é um numero e eu posso atribuir a opcao, senao ela se mantera como zero e caira no caso de opcao invalida
      se(EhNumeroValido(retorno)){
        opcao = t.cadeia_para_inteiro(retorno, 10)
      }

      se ((opcao < 5) e (opcao > 0)){
        //com a opcao valida, crio um laço de repetição para validar os valores, devendo o usuario ser obrigado a escolher algo valido, senao solicita novamente o valor
        faca{
          logico valorInvalido = verdadeiro
          escreva("Agora, digite o primeiro valor: ")
          leia(valorA)
          valorA = tx.substituir(valorA, ",", ".")//troco o , por . para aceitar numeros em formato br e ao mesmo tempo fazer o calculo no padrao da maquina

          se(EhNumeroValido(valorA)){
            a = t.cadeia_para_real(valorA, 10)
            valorInvalido = falso
          }senao{
            escreva("Ops! Primeiro valor inválido!\n")
          }
        }enquanto(valorInvalido)//ira se manter no laço ate o usuario digitar um valor valido
        limpa()

        faca{
          logico valorInvalido = verdadeiro
          escreva("Agora, digite o segundo valor: ")
          leia(valorB)
          valorB = tx.substituir(valorB, ",", ".")

          se(EhNumeroValido(valorB)){
            b = t.cadeia_para_real(valorB, 10)
            valorInvalido = falso
          }senao{
            escreva("Ops! Segundo valor inválido!\n")
          }
        }enquanto(valorInvalido)
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
          escreva(" Resultado: " + tx.substituir(t.real_para_cadeia(resultado, 10), ".", ",") + " \n")
        }
      
      } senao se (opcao != 5){
        limpa ()
        escreva("Operação inválida! \n")
      }
     
    } enquanto (opcao != 5)
    
  }
}
