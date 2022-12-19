class Medusa
  attr_reader :name 
  attr_accessor :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stone = true
    if @statues.length < 3
    @statues.push(victim)
    elsif @statues.length == 3
      @statues.push(victim)
      @statues.shift
    else
    end
  end
end

class Person
  attr_reader :name
  attr_accessor :stone
  def initialize(name)
    @name = name
    @stone = false
  end

  def stoned?
    @stone
  end
end