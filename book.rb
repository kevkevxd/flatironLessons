class Book
    attr_reader :title, :word_count
    @@all = []
    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        @author = author
        @@all << self
    end

    def self.all
        @@all
    end

    def book_authors
        BookAuthors.all.map{|ba| ba.author == self}
    end
    
    def authors
        self.all.select{|ba| ba.author}
    end


end

