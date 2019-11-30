puts "I am in the lion class"

require_relative 'mammal'

class Lion < Mammal
    # attr_accessor :health
    def initialize
        @health = 170
    end

    def display_health
        puts "This is a lion"
        super
        # display_health
    end

    def fly #this is a subclass method
        @health -= 10
        puts "Lion is at #{@health} health after flying."
        self
    end

    def attack_town
        @health -= 50
        puts "Lion's health is #{@health} after terrorizing the town!"
        self
    end

    def eat_humans
        @health += 50
        puts "Lion's health is replenished to #{@health} after eating delicious humans."
        self
    end
end
Aslan = Lion.new
Aslan.display_health
Aslan.attack_town.attack_town.attack_town.eat_humans.eat_humans.display_health