require 'pry'
require_relative './guest.rb'
require_relative './listing.rb'
require_relative './trip.rb'


list1 = Listing.new("seattle")
list2 = Listing.new("new york")


guest1 = Guest.new("kevin")
guest2 = Guest.new("potatohead")
guest3 = Guest.new("cutecumber")
guest4 = Guest.new("tomatoface")

#sea = Listing.new("seattle")
Trip.new(list1, guest1)
Trip.new(list1, guest2)
Trip.new(list2, guest1)
Trip.new(list2, guest2)
Trip.new(list2, guest3)
Trip.new(list2, guest4)


binding.pry

puts "derp"