require 'pry'

class PigLatinizer
    attr_reader :text

    # def initialize(text)
    #     @text = text
    # end

    # def atinlay
    #     base = @text.split(" ")
    #     base.map! do |word|
    #         # binding.pry
    #         if word.downcase.start_with?('a', 'e', 'i', 'o', 'u')
    #             word << "way"
    #         else
    #             start = []
    #             until word.downcase.start_with?('a', 'e', 'i', 'o', 'u')
    #                 start << word[0]
    #                 word.slice!(0)
    #                 # binding.pry
    #             end
    #             start << "ay"
    #             block = start.join
    #             # binding.pry
    #             word << block
    #         end
    #     end
    #     atinlay = base.join(" ")
    # end

    def piglatinize_word(word)
        if word.downcase.start_with?('a', 'e', 'i', 'o', 'u')
            word << "way"
        else
            start = []
            until word.downcase.start_with?('a', 'e', 'i', 'o', 'u')
                start << word[0]
                word.slice!(0)
            end
            start << "ay"
            block = start.join
            word << block
        end
        word
    end

    def piglatinize(sentence)
        arr = sentence.split(" ")
        arr.map!{|word| piglatinize_word(word)}
        arr.join(" ")
    end

    

end
