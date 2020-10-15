class PigLatinizer
    

    def translate_pigs(string)
        vowels = ["a", "e", "i", "o", "u"]
        if vowels.include? (string[0].downcase)
          string +'way'
        else
         letter = string.split(/([aeiou].*)/)
         "#{letter[1]}#{letter[0]}ay"
       end        
    end
    
    def piglatinize(text)
        words = text.split(' ')
        words.map {|word| translate_pigs(word)}.join(' ')
    end

   
    
end