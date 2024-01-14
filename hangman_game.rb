def welcome()
  puts "Welcome hangman game"
  puts "What's your name?"
  name = gets.strip
  puts "\n\n\n\n\n\n"
  puts "We'll start the game for you #{name}"
  name
end

def draw_secret_word()
  puts "choose an word..."
  secret_word = "programer"
  puts "The chosen word has #{secret_word.size} letters... good luck!"
  secret_word
end

def i_dont_want_to_play?()
  puts "Do you want to play again? (S/N)"
  want_to_play = gets.strip
  i_dont_want_to_play = want_to_play.upcase == "N"
end

def asks_kick(kicks, errors)
  puts "\n\n\n"
  puts "Errors so far: #{errors}"
  puts "Kicks so far: #{kicks}"
  puts "Enter the letter or word"
  kick = gets.strip
  puts "Did you get it right? You kicked it [ #{kick} ]"
  kick
end

def count_letters(text, character)
  total_find = 0
  for letter in text.chars
    if letter == character
      total_find+=1
    end
  end
  total_find
end

def play_game(name)
  secret_word = draw_secret_word()
  errors = 0
  kicks = []
  points_so_far = 0
  total_find = 0

  while errors < 5
    kick = asks_kick(kicks, errors)
    kicks << kick
    kick_an_letter = kick.size == 1
    if kick_an_letter
      total_find = secret_word.count(kick[0])
      if total_find
        puts "Letter not found!"
      else
        puts "Letter found #{total_find} vezes!"
      end
    else
      hit = kick == secret_word
      if hit
        puts "Congratulations! You hit"
        points_so_far+=100
        break
      else
        puts "What a pity... Missed!"
        points_so_far-=30
        errors+=1
      end
    end
  end
  puts "You've earned #{points_so_far} points."
end

name = welcome()

loop do
  play_game(name)
  break if i_dont_want_to_play?
end
