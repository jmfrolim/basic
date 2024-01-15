require_relative 'hangman_game_ui'

def masked_word(kicks, secret_word)
  mask = ""
  for letter in secret_word.chars
    if kicks.include? letter
      mask+= letter
    else
      mask+="_"
    end
  end
  mask
end

def asks_for_valid_kick(kicks, errors, mask)
  attempts_header(kicks, errors, mask)
  loop do
    kick = asks_kick
    if kicks.include? kick
      alert_repeated_kick(kick)
    else
      return kick
    end
  end
end

def play_game(name)
  secret_word = draw_secret_word()
  errors = 0
  kicks = []
  points_so_far = 0
  total_find = 0

  while errors < 5
    mask = masked_word(kicks, secret_word)
    kick = asks_for_valid_kick(kicks, errors, mask)
    kicks << kick

    kick_an_letter = kick.size == 1
    if kick_an_letter
      letter_find = kick[0]
      total_find = secret_word.count(letter_find)
      if total_find == 0
        alert_letter_not_found
        errors+=1
      else
        alert_letter_found(total_find)
      end
    else
      hit = kick == secret_word
      if hit
        alert_hit_word()
        points_so_far+=100
        break
      else
        alert_not_hit_word
        points_so_far-=30
        errors+=1
      end
    end
  end
  alert_points_so_far points_so_far
end

def init_play()
  name = welcome()
  loop do
    play_game(name)
    break if i_dont_want_to_play?
  end
end
