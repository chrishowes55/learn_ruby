#write your code here
def echo(word)
  "#{word}"
end

def shout(word)
  "#{word.upcase}"
end

def repeat(word, num=2)
  word += " "
  new_sentence = word * num
  an_array = new_sentence.split(//, (new_sentence.length))
  an_array.pop
  new_string = an_array.join
  new_string
end

def start_of_word(word, num)
  an_array = word.split(//, (word.length - (word.length - num - 1)))
  an_array.pop
  new_word = an_array.join
  new_word
end

def first_word(sentence)
  initial_word = sentence.split(' ')[0]
end

def titleize(entry)
  small_words = ["and", "the", "over"]
  if(entry.include? " ")
    entry = entry.split(" ")
    entry.each.with_index do |x, i|
      if(i == 0)
        entry[0] = entry[0].capitalize
      elsif(small_words.include? x)
        entry[i] = entry[i].downcase
      else
        entry[i] = entry[i].capitalize
      end
    end
    return entry.join(" ")
  else
    return entry.capitalize
  end
end
