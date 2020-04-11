class Game
  TOTAL_ERRORS_ALLOWED = 7

  def initialize(word)
    @letters = word.chars
    @user_guesses = []
  end

  def errors
    normalized_letters(@user_guesses) - normalized_letters(@letters)
  end

  def errors_made
    errors.length
  end

  def errors_allowed
    TOTAL_ERRORS_ALLOWED - errors_made
  end

  def letters_to_guess
    result = @letters.map do |letter|
      if normalized_letters(@user_guesses).include?(normalize_letter(letter))
        letter
      else
        nil
      end
    end
  end

  def lost?
    errors_allowed == 0
  end

  def normalize_letter(letter)
    case letter
    when "Ё"
      "Е"
    when "Й"
      "И"
    else
      letter
    end
  end

  def normalized_letters(letters)
    letters.map { |letter| normalize_letter(letter) }
  end

  def over?
    won? || lost?
  end

  def play!(letter)
    unless over? || normalized_letters(@user_guesses).include?(normalize_letter(letter))
      @user_guesses << letter
    end
  end

  def word
    @letters.join
  end

  def won?
    (normalized_letters(@letters) - normalized_letters(@user_guesses)).empty?
  end
end
