programa {
 funcao inicio() {
    inteiro menu = 1
    real saldo = 0
    cadeia extrato = ""
    real deposito
    real saque, deposito
    real investimento=0
    cadeia controle
    inteiro meses=0
    real rendimento=0
    

  enquanto(menu != 0){
  escreva("| SALDO = R$", saldo, "\n")    
  escreva("|===========MENU===========|\n")
  escreva("| 1- SALDO R$", saldo,"    |\n")
  escreva("| 2- SAQUE                 |\n")
  escreva("| 3- DEPOSITO              |\n")
  escreva("| 4- EXTRATO               |\n")
  escreva("| 5- INVESTIMENTO          |\n ")
  escreva("| 0- SAIR                  |\n")
  escreva("| =========================|\n")
  escreva("| ESCOLHA -> ")
  leia(menu)
  limpa()

  escolha(menu) {
    caso 1:
    escreva("Saldo =", saldo, "\n")
    pare

    caso 2:
    escreva("digite um valor para sacar:")
    leia(saque)
    enquanto(saque < 0) {
      escreva("valor invalido digite novamente:")
      leia(saque)
    }
    se(saque > saldo){
      escreva("não autorizado!\n")
      escreva("aperte ENTER para continuar: ")
      leia(controle)
      limpa()
    }
    pare
    caso 3:
    escreva("digite o valor para depositar: ")
    leia(deposito)
    enquanto (deposito<0){
      escreva("valor invalido digite novamente: ")
      leia(deposito)
    }
    saldo= saldo + deposito
    extrato = extrato + "DEPOSITO--------R$" + deposito + "\n"
    escreva("deposito realizado com sucesso!\n")
    escreva("aperte ENTERpara continuar")
    leia(controle)
    limpa()
    pare
    caso 4: escreva("extrato")
    escreva("aperte ENTER para continuar")
    leia(controle)
    limpa()
    pare
    caso 5: escreva("digite a quantidade de investimento: ")
    leia(investimento)
    escreva("digite a quantidade de meses que eseja investir: ")
    leia(meses)
    se(saldo >= investimento){
      saldo= saldo - investimento
      para(inteiro contador = 1; contador <= meses; contador++){
        rendimento = investimento  *1.02
        investimento = rendimento
      }
      escreva(meses,"se passaram!\n")
      escreva("seu rendimento foi de: ", investimento, "\n")
      saldo = saldo + investimento

    }
    senao{
      escreva("não autorizado!\n")
    }
    pare


  }
    }
    
    
  }
}
