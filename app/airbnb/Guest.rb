require 'pry'

class Guest
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def trips
    Trip.all.select {|trip| trip.guest == self }
  end

  def trip_count
    trips.count
  end

  def self.pro_traveller
    Trip.all.find_all {|trip| trip.guest.trip_count > 1}.map {|trip| trip.guest.name}.uniq
  end

  def self.find_all_by_name(name)
    self.all.find {|guest| guest.name == name}
  end
end
