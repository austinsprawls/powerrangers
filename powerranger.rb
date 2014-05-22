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

    attr_accessor :caffeine_level
    attr_reader :name, :strength, :color

    def initialize(name, caffeine_level, strength, color)
        super(name, caffeine_level)
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

    def use_megazord(person)
        puts "#{person.name} was hit with the MegaZord!"
        person.caffeine_level -= 10
    end
end

class EvilNinja < Person
    def initialize(name, caffeine_level, strength, evilness)
        super(name, caffeine_level)
        @strength = strength
        @evilness = evilness
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

    def cause_mayhem(person)
        "#{@name} unleashed mayhem on #{person.name}! #{person.name}'s caffeine level is drained to zero!"
        person.caffeine_level = 0
    end
end

def fight_scene(power_ranger1, power_ranger2, evil_ninja1, evil_ninja2, person1, person2)
    power_ranger1.punch(evil_ninja1, 6)
    evil_ninja2.cause_mayhem(person1)
    person2.scream.run
    power_rangr2.use_megazord(evil_ninja2)
end
