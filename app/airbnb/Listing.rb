require 'pry'

class Listing
  attr_accessor :name, :city

    @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end


  def trips
    Trip.all.select {|trip| trip.listing == self}
  end


  def trip_count
    trips.count
  end

  def self.find_all_by_city(city_name)
    @@all.find_all {|listing| listing.city == city_name}
    #binding.pry
  end

  def self.most_popular
    listing_count = Hash.new(0)

    listing_array = Trip.all.map {|rc| rc.listing.city}

    listing_array.each { |listing| listing_count[listing] += 1}

    listing_count.key(listing_count.values.max)
  end

end
