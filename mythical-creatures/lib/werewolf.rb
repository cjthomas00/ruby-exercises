class Werewolf
  attr_reader :name, 
              :location

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @change = 0
    @wolf = false
    @hungry = false
  end

  def human?
    @human
  end

  def change!
    @change += 1
    if @change.odd?
      @human = false
      @hungry = true
    else
      @change.even?
      @human = true
    end
  end

  def wolf?
    if @change.odd?
      @wolf = true
    end
  end

  def hungry?
    @hungry
  end
  
end