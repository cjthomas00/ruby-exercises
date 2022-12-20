class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @cranky_count = 0
  end

  def shoot
    return "NO!" if @cranky_count == 3 || laying? == true
    @cranky_count += 1
    'Twang!!!'
  end

  def run 
    return "NO!" if laying? == true
    @cranky_count += 1
    'Clop clop clop clop!'
  end

  def cranky?
    return true if @cranky_count == 3
    false
  end

  def standing?
    @standing
  end

  def sleep
    return "NO!" if @standing == true
    if @cranky_count == 3
       @cranky_count -= 3
    elsif @cranky_count == 2
        @cranky_count -= 2
    else  @cranky_count == 1
        @cranky_count -= 1
    end
    @cranky == false
    
  end

  def lay_down
    @standing = false
  end

  def laying?
    return true if @standing == false
  end

  def stand_up
    @standing = true
  end
end