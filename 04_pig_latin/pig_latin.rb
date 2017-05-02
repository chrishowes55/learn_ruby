#write your code here
def translate str
  str_arr = str.split(/(\W+)/)
  str_new = []
  vowels = ["a", "e", "i", "o", "u"]
  str_arr.each do |word|
    split = false
    q = false
    letters = word.scan /\w/
    letters.each do |letter|
      vowels.each do |vowel|
        if (letter == vowel) and !(vowel == "u" and q)
          split = true
          split_word = word.split(letter, 2)
          split_word = split_word.push(letter).reverse
          word_new  = split_word.join("").downcase + "ay"

          if word == word.capitalize
            word_new = word_new.capitalize
          end

          word = word_new
        end
        break if letter == vowel
      end
      if letter == "q"
        q = true
      else
        q = false
      end
      if vowels.length < 6
        vowels.push "y"
      end
      break if split == true
    end
    str_new.push word
    vowels.pop
  end
  str_new.join("")
end
