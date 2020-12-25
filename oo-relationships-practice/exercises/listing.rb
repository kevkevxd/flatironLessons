require 'pry'
class Listing
    attr_reader :city
    @@all = []
    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        self.trips.map(&:guest).uniq
    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(city)
        all.find {|list|list.city == city}
    end

    def self.most_popular
        self.all.max_by do |listing|
            listing.trip_count
        end
    end

end
