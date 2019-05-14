class PigLatinizer

  def piglatinize(string)
    arr1 = string.split(" ")
    arr2 = arr1.map {|string| piglatinize_word(string)}
    arr2.join(" ")
  end 

  def piglatinize_word(string)
    first_letter = string[0].downcase
    if ["a","e","i","o","u"].include?(first_letter)
      "#{word}way"
    else 
      consonants = []
      consonants << string[0]

      if ["a","e","i","o","u"].include?(string[1]) == false
        consonants << string[1]

      if ["a","e","i","o","u"].include?(string[2]) == false
        consonants << string[2]

      end 
    end 
        "#{string[consonants.length..-1] + consonants.join + "ay"}"
    end 
  end 
end  