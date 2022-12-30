class Direwolf
  attr_reader :name, :starks_to_protect
  attr_accessor :home, :size, :hunts_white_walkers

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts_white_walkers = true
  end

  def protects(name)
    if name.location == home && @starks_to_protect.length < 2
      name.safe = true
      @starks_to_protect << name
      @hunts_white_walkers = false
    end
  end

  def hunts_white_walkers?
    @hunts_white_walkers
  end

  def leaves(name)
    @starks_to_protect.clear
    name.safe = false
  end
end

class Stark
  attr_reader :name 
  attr_accessor :location, :house_words, :safe

  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @safe = false
    @house_words = 'Winter is Coming'
  end

  def safe?
    @safe
  end
end