class PigLatinizer

    def piglatinize(text)
        # binding.pry
        words = text.split(" ")
        string = ""
        words.each do |word|
            if %w(b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z).include?(word[0])
                if %w(b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z).include?(word[1])
                    if %w(b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z).include?(word[2])
                        pig_latin = word[3..-1] + word[0..2] + "ay"
                    else
                        pig_latin = word[2..-1] + word[0..1] + "ay"
                    end
                else
                    pig_latin = word[1..-1] + word[0] + "ay"
                end
            else
                pig_latin = word + "way"
            end
            string << pig_latin + " "
        end
        string.strip
    end

end
