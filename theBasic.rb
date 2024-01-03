def da_boas_vindas
  puts "Bem-vindo ao jogo da adivinhação"
  puts "Qual é o seu nome?"
  nome = gets
  puts "\n\n\n\n\n\n"
  puts "Começaremos o jogo para você, " + nome
end

def sorteia_numero_secreto
  puts "Escolhendo um número secreto entre 0 e 200..."
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  sorteado = 175
end

da_boas_vindas()
numero_secreto = sorteia_numero_secreto()


tentativa = 0
limite_de_tentativas = 3
for tentativa in 1..limite_de_tentativas
  puts "\n\n\n\n"
  puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
  puts "Entre com o número"
  chute = gets
  puts "Será que acertou? Você chutou " + chute
  acertou = 175 == chute.to_i

  if acertou
    puts  "Acertou miseravi"
    break
  else
    puts  "Errou"
    maior = numero_secreto > chute.to_i
    if maior
      puts "O número secreto é maior!"
    else
      puts "O número secreto é menor!"
    end
  end

end
