require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

l1 = Listing.new("listing_1", "New York")
l2 = Listing.new("listing_2", "Philadelphia")
l3 = Listing.new("listing_2", "New York")


g1 = Guest.new("ronny")
g2 = Guest.new("skabbby")
g3 = Guest.new("roger")
g4 = Guest.new("skully")
g5 = Guest.new("hairy")



t1 = Trip.new(l1, g1)
t2 = Trip.new(l2, g2)
t3 = Trip.new(l1, g2)
t4 = Trip.new(l1, g4)
t4 = Trip.new(l3, g2)
t4 = Trip.new(l2, g4)





Pry.start
