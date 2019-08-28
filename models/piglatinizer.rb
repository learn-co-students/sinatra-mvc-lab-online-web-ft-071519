require 'pry'
class PigLatinizer
  def consonant(letter)
    true if letter != /[aeiouAEIOU]/
  end

  def piglatinize2(word)
    if consonant(word[0]) == false
      word_array = word.split('')
      word_array.push('way')
      word = word_array.join('')
    elsif consonant(word[0]) == true && consonant(word[1]) == false
      word = word[1..-1] + word[0] + 'ay'
    end
    word
  end

  def piglatinize(word)
    array = word.split('')
    if consonant(array[0]) == false
      array.push('way')
    elsif consonant(array[0]) == true && consonant(word[1]) == false
      cut = array.slice![0]
      array << cut
      array << 'ay'

    end
    array.join('')
  end

  def piglatinize_string(string)
    array = string.split(' ')
    new_array = []
    array.each do |word|
      new_array << piglatinize(word)
    end
    new_array.join(' ')
  end



end