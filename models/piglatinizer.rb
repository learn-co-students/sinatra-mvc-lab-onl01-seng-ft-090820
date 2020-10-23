class PigLatinizer


    def piglatinize(phrase)

        words = phrase.split
        pl_array = words.map do |word|
            first_vowel_index = word.index(/[aeiouAEIOU]/)
            if first_vowel_index == 0
                new_word = "#{word}way"
            else
                new_word = "#{word[first_vowel_index..-1]}#{word[0..(first_vowel_index-1)]}ay"
            end
            new_word
        end
        pl_phrase = pl_array.join(' ')
        pl_phrase

    end


end

