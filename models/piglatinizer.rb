class PigLatinizer

    def translate(text)
        if /^[aeiou]/i.match(text)
            "#{text}way"
        else
            parts = text.split(/([aeiou].*)/)
            "#{parts[1]}#{parts[0]}ay"
        end
    end

    def piglatinize(text)
        words = text.split(" ")
        words.map{|w| translate(w)}.join(" ")
    end

end