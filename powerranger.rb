class Person
    def initialize(name, caffeine_level)
        @name = name
        @caffeine_level = caffeine_level
    end

    def run
        puts "Making an escape now"
    end

    def scream
        puts "AHHHH!"
    end

    def drink_coffee
        @caffeine_level += 1
    end
end

class PowerRanger
end

class EvilNinja
end
