# bundle install colorize
require 'colorize'

puts "Bem vindos ao jogo Guess Game".colorize(:green)
puts "Tente adivinhar o número 
guardado no cofre e que está 
entre 1 e 5.".colorize(:color => :white, :background => :light_blue)

numero_secreto = rand(1..5)
tentativas = 0

loop do
    print "Digite seu palpite: ".colorize(:yellow)
    palpite = gets.chomp.to_i
    tentativas += 1

    if palpite == numero_secreto
        puts "🎉 Parabéns, voce acertou em #{tentativas} tentativas.".colorize(:magento)
        break
    elsif palpite < numero_secreto
        puts "O número é maior!".colorize(:cyan)
    else
        puts "O número é menor!".colorize(:cyan)
    end
end

puts "Obrigado por jogar o Guess Game!"