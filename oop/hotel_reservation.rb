# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

puts "TESTING the HotelReservation class..."
puts

hotel_reservation = HotelReservation.new({customer_name: "Pacifique", date: "Jan 4, 2017", room_number: 345})

result = hotel_reservation.room_number=(568)
puts "room_number returned:"
puts result
puts

if result == 568
  puts "PASS!"
else
  puts "F"
end

result = hotel_reservation.add_a_fridge
puts "Add a fridge returned:"
puts result
puts

if result.include?("fridge")
  puts "PASS!"
else
  puts "F"
end
puts

result = hotel_reservation.add_a_crib
puts "add_a_crib returned:"
puts result
puts
if result.incl("crib") 
  puts "PASS!"
else
  puts "F"
end
puts 

result = hotel_reservation.add_a_custom_amenity("hot tub")
puts "add_a_custom_amenity returned"
puts result
puts
if result.include?("hot tub")
  puts "PASS!"
else
  puts "F"
end
