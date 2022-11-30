class Wizard
    attr_reader :name, :bearded, :incantation
    def initialize(name)
        @name = name
        @bearded = true
        @incantation = incantation
    end
    
    def bearded?
        @bearded   
    end

    def incantation
        @incantation
    end
end