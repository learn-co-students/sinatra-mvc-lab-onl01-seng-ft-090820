class PigLatinizer
    attr_reader :word
    

    def piglatinize(word)
        word_arr = word.split(" ")
        if word_arr.length > 1
            piglatinize_sentence(word)
        else 
            piglatinize_word(word)
        end 
    end 

    def piglatinize_word(word)
        @word = word
        letter1 = @word[0].downcase
        if ["a", "e", "i", "o", "u"].include?(letter1)
            "#{@word}way"
        else
           consonants = []
           consonants << @word[0]
           if ["a", "e", "i", "o", "u"].include?(@word[1]) == false
            consonants << @word[1]
                if ["a", "e", "i", "o", "u"].include?(@word[2]) == false
                    consonants << @word[2]
                end 
            end 
        "#{@word[consonants.length..-1] + consonants.join("") + "ay"}"
        end 
    end 

    def piglatinize_sentence(sentence)
        arr = sentence.split(" ")
        arr1 = arr.map {|word| piglatinize(word)}
        arr1.join(" ")
    end 

end 