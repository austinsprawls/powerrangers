class Person

    attr_accessor :name, :caffeine_level

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

class PowerRanger < Person

    def initialize(name, caffeine_level, strength, color)
        @name = name
        @caffeine_level = caffeine_level
        @strength = strength
        @color = color
    end

    def punch(person, power)
        if power < 5
            puts "#{person.name} was punched with a power level of #{power}! #{person.scream} #{person.run}"
            person.caffeine_level -= 1
        else
            puts "#{person.name} was somersaulted into the air with a punch power level of #{power}!"
            person.caffeine_level -= 5
        end

    end

    def rest
    end

    def user_megazord(person)
        puts "#{person.name} was hit with the MegaZord!"
        person.caffeine_level -= 10
    end
end

class EvilNinja < Person
end
