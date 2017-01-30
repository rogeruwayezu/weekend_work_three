# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Remote 
  def initialize(tv)
    @tv = tv
  end
  def toggle_power
    if @power == true
       @power = false
    elsif @power == false
       @power = true
    end
  end
  def increment_volume
    volume += 1
  end
  def decrement_volume
    volume -= 1
  end
  def set_channel(number)
    tv.channel = number
  end

end

class Tv < Remote
  def initialize(tv_info)
    @power = tv_info[:power]
    @volume = tv_info[:volume]
    @channel = tv_info[:channel]
    
  end

end

tv = Tv.new({power: true, volume: 50, channel: 2})

remote = Remote.new("tv")

result = tv.toggle_power
puts "Add a fridge returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end
puts

result = tv.set_channel(5)