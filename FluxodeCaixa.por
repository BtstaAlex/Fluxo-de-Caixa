programa {
    inteiro caixa = 0
    inteiro entradacaixa = 0
    inteiro saidacaixa = "aaaa"

    funcao inicio(){
        escreva("Quanto entrou de dinheiro hoje?\n")
        leia(entradacaixa)
        escreva("Quanto saiu de dinheiro hoje?\n")
        leia(saidacaixa)

        caixa = lucro(entradacaixa, saidacaixa)

        escreva(caixa)

    }

    funcao lucro(inteiro x, inteiro y) {
    inteiro resultados = x - y  
    retorne resultados  
    }


}
