def reverse_each_word(sentence)
  a = []
  sentence.split(' ').collect { |word|
    a << word.reverse
  }
  a.join(" ")
end
