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

class Tv
  def initialize(tv_info)
    @power = tv_info[:power]
    @volume = tv_info[:volume]
    @channel = tv_info[:channel]
    @switch = [:active]
  end

end

tv = Tv.new({power: 224, volume: 50, channel: 2})

class Remote < Tv
  def initialize(tv)
    @tv = tv
    @switch = tv[:active]
  end
  def toggle_power
    if tv.active == true
      tv.active = false
    elsif tv.active == false
      tv.active = true
    end
  end
  def increment_volume
    tv.volume += 1
  end
  def decrement_volume
    tv.volume -= 1
  end
  def set_channel(number)
    tv.channel = number
  end

end

remote = Remote.new(tv_1)