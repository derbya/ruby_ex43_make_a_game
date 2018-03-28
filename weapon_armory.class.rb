require './death.class.rb'
require './the_bridge.class.rb'

class WeaponArmory

    def prompt()
        print "[keypad]> "
        @guess = gets.chomp()
    end

    def play()

        puts <<~HEREDOC
        You do a dive roll into the Weapon Armory, crouch and scan the room
        for more Gothons that might be hiding. It's dead quiet, too quiet.
        You stand up and run to the far side of the room and fine the
        neutron bomb in its container. There's a kepad lock on the bottom
        and you need the code to get the bomb out. If you get the code
        wrong 10 times, then the lock closes forever and you can't get
        the bomb. The code is 3 digits.
        HEREDOC

        code = "%s%s%s" % [rand(9) + 1, rand(9) + 1, rand(9) + 1]
        prompt()

        guesses = 0
        while guesses < 10
            break if @guess == code
            guesses += 1
            prompt()
        end

        if @guess != code
            puts <<~HEREDOC
            The lock buzzes on last time and then you hear a
            sickening melting sound as the mechanism is fused
            together. You decide to sit there, and finally the
            Gothons blow up the ship from their ship, and you die.
            HEREDOC

            return Death.new

        else
            puts <<~HEREDOC
            The container clicks open and the seal breaks, letting
            gas escape. You grab the neutron bomb and run as fast
            as you can to the bridge where you must place it in
            the right spot.
            HEREDOC

            return TheBridge.new
        end
    end
end