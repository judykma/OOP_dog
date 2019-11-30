puts "I am in the dog class"

require_relative 'mammal'

class Dog < Mammal
    def subclass_display_health
        display_health
    end

    def pet #this is a subclass method
        @health += 5
        puts "Current health after pets: #{@health}"
        self
    end

    def walk
        @health -= 1
        puts "Current health after walking: #{@health}"
        self
    end

    def run
        @health -= 10
        puts "Current health after running: #{@health}"
        self
    end
end
Minnie = Dog.new
Minnie.display_health
Minnie.pet.pet.walk.run.run.display_health