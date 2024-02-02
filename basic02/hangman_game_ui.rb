def welcome()
  puts "Welcome hangman game"
  puts "What's your name?"
  name = gets.strip
  puts "\n\n\n\n\n\n"
  puts "We'll start the game for you #{name}"
  name
end

def attempts_header(kicks, errors, mask)
  puts "\n\n\n"
  puts "Secret word: #{mask}"
  puts "Kicks so far: #{kicks}"
  puts "Erros so far: #{errors}"
end

def asks_kick
  puts "Enter the letter or word"
  kick = gets.strip
  puts "Did you get it right? You kicked it [ #{kick} ]"
  kick
end

def alert_choose_word()
  puts "choose an word..."
end

def alert_word_choose(secret_word)
  puts "The chosen word has #{secret_word.size} letters... good luck!"
  secret_word
end


def i_dont_want_to_play?()
  puts "Do you want to play again? (S/N)"
  want_to_play = gets.strip
  i_dont_want_to_play = want_to_play.upcase == "N"
end

def alert_repeated_kick(kick)
  puts "Have you ever guessed that [#{kick}]!"
end

def alert_letter_not_found()
  puts "Letter not found!"
end

def alert_letter_found(total_find)
  puts "Letter found #{total_find} vezes!"
end

def alert_hit_word()
  puts "Congratulations! You hit"
end

def alert_not_hit_word
  puts "What a pity... Missed!"
end

def alert_points_so_far(points_so_far)
  puts "You've earned #{points_so_far} points."
end
