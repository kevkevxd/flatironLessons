require_relative '../lib/shoe'
# Make your shoe class here!

class Shoe
    attr_accessor :color, :size, :material, :condition, :brand

    def initialize(brand)
        @brand = brand
    end

    def cobble
        @condition = "new"
        puts "Your shoe is as good as new!"
        
    end
end