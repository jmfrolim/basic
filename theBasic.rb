def da_boas_vindas
  puts "Bem-vindo ao jogo da adivinhação"
  puts "Qual é o seu nome?"
  nome = gets.strip
  puts "\n\n\n\n\n\n"
  puts "Começaremos o jogo para você, #{nome} "
end

def sorteia_numero_secreto
  sorteado = rand(200)
  puts "Escolhendo um número secreto entre 0 e 200..."
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  sorteado
end

def pede_um_numero(chutes,tentativa,limite_de_tentativas)
  puts "\n\n\n\n"
  puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
  puts "Chutes até agora: #{chutes}"
  puts "Entre com o número"
  chute = gets.strip
  puts "Será que acertou? Você chutou  #{chute} "
  chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
  acertou = numero_secreto == chute
  if acertou
    puts  "Acertou miseravi!"
    return true
  end

  maior = numero_secreto > chute
  if maior
    puts "O número secreto é maior!"
  else
    puts "O número secreto é menor!"
  end
  return false
end

da_boas_vindas()
numero_secreto = sorteia_numero_secreto()

tentativa = 0
limite_de_tentativas = 5
chutes = []
pontos_ate_agora = 1000
pontos_a_perder = 0

for tentativa in 1..limite_de_tentativas
  chute = pede_um_numero(chutes, tentativa, limite_de_tentativas )

  chutes << chute

  pontos_a_perder = (chute - numero_secreto) / 2.0
  pontos_a_perder = - pontos_a_perder unless pontos_a_perder > 0
  pontos_ate_agora = pontos_ate_agora - pontos_a_perder

  if verifica_se_acertou(numero_secreto, chute)
    break
  end

  puts "Pontos até agora: #{pontos_ate_agora.to_s} !"
end
