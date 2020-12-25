class Author

    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def book_authors
        BookAuthor.all.select {|ba| ba.book == self}
    end

    def books
        self.book.authors.map {|ba| ba.book}
    end

end

=begin     #selects all books of this author and creates an array
    def books 
        Book.all.select{|b| b.author == self }
    end
    ##struggled in pry here trying to call a1/a2 from console. Was returning an empty array


    def write_book(title, word_count) #create a new book instance
        Book.new(title, word_count, self)
    end

    #total number of words author wrote across authored books
    def total_words 
       books.sum(&:word_count)
    end
    ## felt pretty good about this, but couldn't test because of empty array in pry
    ## also, may I have feedback on if using (&:) is acceptable? 
        
    def self.most_words #author instance who has written the most words
        self.all.max { |a, b| b.author.total_words <=> a.author.total_words }
    end
    ##iterating through each book instance to compare max total word count =end
end

