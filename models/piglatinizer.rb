require 'pry'
class PigLatinizer
  def consonant(letter)
    !letter.match(/[aeiouAEIOU]/)
  end

  def piglatinize_word(word)

    if !consonant(word[0])
      word += 'w'
    elsif consonant(word[0]) && !consonant(word[1])
      word = word[1..-1] + word[0]
    elsif consonant(word[0]) && consonant(word[1]) && !consonant(word[2])
      word = word[2..-1] + word[0..1]
    elsif consonant(word[0]) && consonant(word[1]) && consonant(word[2]) && !consonant(word[3])
      word = word[3..-1] + word[0..2]
    end
    word << 'ay'
  end

  def piglatinize_string(string)
    string.split.collect do |word|
      piglatinize_word(word)
    end.join(' ')
  end

  def piglatinize(string)
    if string.split(' ').length == 1
      piglatinize_word(string)
    else
      piglatinize_string(string)
    end
  end



end