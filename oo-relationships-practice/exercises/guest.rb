require 'pry'
class Guest
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.guest == self}
    end

    def listings
        self.trips.map(&:listing).uniq
    end

    def trip_count
        trips.count
    end

    def self.pro_traveller
        self.all.select {|guest| guest.trip_count > 1}    
    end
    
    def find_all_by_name(name)
        all.find {|guest|guest.name == name}
    end

end