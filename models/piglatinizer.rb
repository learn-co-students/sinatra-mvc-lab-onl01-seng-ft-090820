class PigLatinizer 

    def piglatinize_word(word)
       @word = word
       if @word.start_with?(/[aeiou]/i) == false
        @word = @word.chars.rotate.join until @word.start_with?(/[aeiou]/i) == true
        @word + "ay"
       else
        word + "way"
       end
    end

    def piglatinize(word)
        if word.include?(" ")
            piglatinize_sentence(word)
        else
            piglatinize_word(word)
        end
    end

    def piglatinize_sentence(sentence)
        sentence.split(" ").map {|word| piglatinize_word(word) }.join(" ") 
    end


        # if !words.include?(" ") && words.start_with?(/[aeiou]/) || !words.include?(" ") && words.start_with?(/[AEIOU]/)
        #     wordsarray = words.split(",")
        #     wordsarray << "way"
        #     wordsarray.join
        # elsif !words.include?(" ") && words.start_with?(/[b-df-hj-np-tv-z]/) || !words.include?(" ") && words.start_with?(/[B-DF-HJ-NP-TV-Z]/)
        #     wordsarray = words.split(",")
        #     until wordsarray[0] =~ /[aeiou]/ do 
        #         firstelement = wordsarray.shift()
        #         wordsarray << firstelement
        #     end
        #     wordsarray << "ay"
        #     wordsarray.join
        # else
            
        # end


end