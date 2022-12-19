class Wizard
    attr_reader :name
    attr_accessor :bearded

    def initialize(name, bearded = true)
        @name = name
        @bearded = bearded
        @rested = true
        @spells_cast = 0
    end
    
    def bearded?
        @bearded == true  
    end

    def incantation(powers)
         "sudo #{powers}"
    end

    def rested?
        @rested
    end

    def cast(power)
        @spells_cast += 1
        @rested = false if @spells_cast == 3
        power.upcase + "!"
    end

end