class PigLatinizer
attr_accessor :result

    def piglatinize(input)
        @result = []
        splitted = input.split(" ")
        
        splitted.each do |word|
            if word.length == 1
            word.downcase.match(/[aeiou]/) ? @piglatinized = word << "way" : @piglatinized = word << "ay"    
            @result << @piglatinized           
            elsif word[0].downcase.match(/[aeiou]/)
                @piglatinized = word << "way"
                @result << @piglatinized
            else
                letter = word.split("")
                stop = letter.index {|l| l.match(/[aeiou]/)}
                s2 = stop - 1
                @piglatinized = word[stop..-1] + word[0..s2] + 'ay'
                @result << @piglatinized
            end
        end
        @result.join(" ")
    end

end