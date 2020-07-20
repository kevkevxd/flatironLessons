require 'pry'
require_relative './book'
require_relative './author'



#   Book.new(self, title, word_count)

a1 = Author.new("kevin")
a2 = Author.new("victor")
a3 = Author.new("alex")
a4 = Author.new("tashawn")


b1 = Book.new("turtle alert", 3232, "kevin")
b2 = Book.new("coding for potatoes", 63232, "victor")
b3 = Book.new("indigo plateau", 7432, "kevin")
b4 = Book.new("how to cook hot dog", 3117, "victor")

coding = Book.new("coding for potatoes", 352)
BookAuthor.new(coding, a1)
BookAuthor.new(coding, a4)

binding.pry

puts "potato"