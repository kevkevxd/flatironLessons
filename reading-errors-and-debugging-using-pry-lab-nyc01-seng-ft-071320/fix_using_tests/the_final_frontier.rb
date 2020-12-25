# don't forget to add: require 'pry'
require 'pry'
def generate_star_date
  (rand(100000) + 400000) / 10.0
end


def state_log(generate_star_date)
  puts "Captain's Log, star date #{generate_star_date}."
end

def engage
  state_log(generate_star_date)
end
engage
