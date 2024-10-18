struct User{
  var deposito: Double
  var saque: Double
  var saldo: Double
}

var user = User(deposito: 0, saque: 0, saldo: 0)


print("Acesso ao banco:")
print("Deseja depositar algo? (1)")
print("Deseja sacar algo? (2)")
print("Deseja ver o saldo? (3)")

var escolha: Int = -1

while(escolha != 0){

  if let ler = readLine(), let inputEscolha = Int(ler){
    escolha = inputEscolha
  
  switch(escolha){

    case 1 :
  
    print("Digite o valor que deseja depositar: ")

    if let input = readLine(), let valor = Double(input), valor > 0 {

      user.deposito = valor
      user.saldo += user.deposito

      print("Valor depositado: \(user.deposito)")
      print("Saldo atual: \(user.saldo)")
    }
    else {
      print("entrada inválido")
    }
  
    case 2 :
  
    print("Digite o valor que deseja sacar: ")
    if let input = readLine(), let valor = Double(input), valor >= 0, valor <= user.saldo{

      user.saque = valor
      user.saldo -= user.saque

      print("Valor sacado: \(user.saque)")
      print("Saldo atual: \(user.saldo)")
    }
    else{
      print("entrada inválida")
    }

    case 3 : 
    print("Saldo atual: \(user.saldo)")

  
    default : 

    print("entrada inválida, por favor digite um número válido")

  }
}
  else{
    print("entrada inválida")
  }
  

  print("Deseja fazer outra operação?")
  print("Depositar (1)")
  print("Sacar (2)")
  print("Ver saldo (3)")
  print("Sair (0)")
  
}
