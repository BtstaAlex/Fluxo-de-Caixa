programa {
  cadeia descricao[100]
  cadeia descricao1[100]
  cadeia dataehora[5]
  cadeia dataehora1[5]
  real valores[5]
  real valores1[5]
  inteiro contador = 0
  inteiro contador1 = 0
  inteiro contador3 = 0
  cadeia opcao


  funcao inicio() {
//menu
    faca{
        escreva("Escolha uma opção:\n")
        escreva("1 - Adicionar Receita\n")
        escreva("2 - Adicionar Despesa\n")
        escreva("3 - Listar Fluxo de Caixa\n")
        escreva("4 - Listar Saldo Atual\n")
        escreva("0 - Sair\n")
        leia(opcao)
        limpa()
        menu()


    }enquanto(opcao != 0)
//
  }


      funcao menu(){
       
        escolha(opcao) {
        caso "1":
                requisitaReceita()

        pare
        caso "2":     
                requisitaDespesas()
        pare
        caso "3":           
                escreva(FluxoDeCaixa(),"\n")
        pare
        caso "4":
                escreva("  * \n") 
                escreva("Seu saldo atual é de R$", listaSaldoAtual(), "\n . \n")
                escreva("  * \n") 
        pare
        caso "0":
          escreva("Encerrando o programa. Obrigado!")
        pare
        }
      }




  funcao real SaldoReceita(){
    real saldo = 0
    para(inteiro i = 0; i < contador; i++){
      saldo += valores[i]
    }
    retorne saldo
  }

    funcao real SaldoDespesas(){
    real saldo1 = 0
    para(inteiro i = 0; i < contador1; i++){
      saldo1 += valores1[i]
    }
    retorne saldo1
  }

  funcao real listaSaldoAtual(){
    real saldo3 = 0
      saldo3 = SaldoReceita() - SaldoDespesas()
    retorne saldo3
  }



  funcao requisitaReceita(){
    cadeia a
    real b
    cadeia c


    escreva("Digite a descrição: ")
    leia(a)
    escreva("Digite a valor: ")
    leia(b)
    escreva("Digite a data e hora: ")
    leia(c)
   
    AdicionarReceita(a, b, c)

    limpa()


  }


  funcao requisitaDespesas(){
  cadeia a
  real b
  cadeia c


    escreva("Digite a descriação: ")
    leia(a)
    escreva("Digite a valor: ")
    leia(b)
    escreva("Digite a data e hora: ")
    leia(c)
   
    AdicionarDespesa(a, b, c)

    limpa()
  }


    funcao AdicionarReceita(cadeia x, real v, cadeia y) {
    descricao[contador] = x

    valores[contador] = v
    dataehora[contador] = y
    contador++
    contador3++
     }


    funcao AdicionarDespesa(cadeia x, real v, cadeia y) {
    descricao1[contador1] = x
    valores1[contador1] = v
    dataehora1[contador1] = y
    contador1++
    contador3++
    }
  }