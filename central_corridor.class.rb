require './death.class.rb'
require './weapon_armory.class.rb'

class CentralCorridor
    def prompt()
        print "> "
        @action = gets.chomp()
    end

    def play()
    
        puts <<~HEREDOC
        The Gothons of Planet Percal #25 have invaded your ship
        and destroyed your entire crew. You are the last surviving
        member and your last mission is to get the neutron destruct
        bomb from the Weapon Armory, put it in the bridge, and blow
        the ship up after getting into an escape pod.

        You're running down the central corridor to the Weapon
        Armory when a Gothon jumps out, red scaly skin, dark grimy
        teeth, and evil clown costume, flowing around his hate filled
        body. He's blocking the door to the Armory and about to pull
        a weapon, to blast you.
        HEREDOC

        prompt()

        if @action == 'shoot!'
            puts <<~HEREDOC
            Quick on the draw, you yank out your blaster and fire it at
            the Gothon. His clown costume is flowing and moving around
            his body, which throws off your aim. You laser hits his
            costume but misses him entirely. This completely ruins his
            brand new costume his mother bought him, which makes him fly
            into an insane rage and blast you repeatedly in the face
            until you are dead. Then he eats you.
            HEREDOC

            return Death.new

        elsif @action == 'dodge!'
            puts <<~HEREDOC
            Like a world class boxer you dodge, weave, slip and slide right
            as the Gothon's blaster cranks a laser past your head. In the
            middle of your artful dodge, your foot slips and you bang your
            head on the metal wall and pass out. You wake up shortly after
            only to die as the Gothon stomps on your head and eats you.
            HEREDOC

            return Death.new

        elsif @action == 'tell a joke'
            puts <<~HEREDOC
            Lucky for you, they made learn Gothon insults in the academy. You
            tell the one Gothon joke you know: Lbhe zbure vf bf sng, jajd
            fur fvgf nebhaq gur uf. The Gothon stops, tries not to laugh, then
            bursts out laughing and can't move. While he's laughing you run up
            and shoot him square in the head. Putting him down, then jump through
            the Weapon Armory door.
            HEREDOC

            return WeaponArmory.new

        else
            puts "DOES NOT COMPUTE!"
            return CentralCorridor.new
        end
    end
end