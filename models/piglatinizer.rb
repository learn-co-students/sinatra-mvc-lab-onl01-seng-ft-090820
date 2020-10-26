class PigLatinizer

  def piglatinize(input)
    ay = "ay"
    way = "way"
    arr = input.split.map do |word|
      if word[0].match(/[aeiouAEIOU]/)
        new_word = word + way
        new_word
      else
        consonants = word.slice!(/^([^aeiou]+)/)
        new_word = word + consonants + ay
        new_word
      end
    end
    arr.join(" ")
  end
end
