require "pry"

class PigLatinizer
  def piglatinize(string)
    arrayOfWords = string.split
    piglatinWords = []
    arrayOfWords.each do |word|
      if begin_with_vowel(word)
        piglatinWords << word + "way"
      else
        arrayOfLetters = []
        word.split("").each do |letter|
          arrayOfLetters << letter
        end
        arrayOfLetters.each do |letter|
          if is_a_consenant(arrayOfLetters[0])
            firstletter = arrayOfLetters[0]
            arrayOfLetters.shift
            arrayOfLetters.push(firstletter)
          end
        end
        piglatinWords << arrayOfLetters.join + "ay"
      end
    end
    piglatinWords.join(" ")
  end

  def begin_with_vowel(word)
    regex = /[aeiouAEIOU]/
    if word[0].match(regex)
      true
    else
      false
    end
  end

  def is_a_consenant(letter)
    regex = /[aeiouAEIOU]/
    if !letter.match(regex)
      true
    else
      false
    end
  end

  # split string into array of words
  # for each word
  # does it begin with a vowel?
  # add 'way' to the end of the string
  # add word to an array
  # if it doesn't begin with vowel
  # for each letter
  # is it a consenant?
  # move the letter to the end of the word
  # if not, move on
  # add 'ay' to the end
  # add word to an array
  # join new array
end

# word = Piglatinizer.new("Hello my name is nick")

# puts word.piglatinize
