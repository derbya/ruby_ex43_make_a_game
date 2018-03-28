require './death.class.rb'
require './escape_pod.class.rb'

class TheBridge

    def prompt()
        print "> "
        @action = gets.chomp()
    end

    def play()
        puts <<~HEREDOC
        You burst onto the Bridge with the neutron bomb under your
        arm and suprise 6 Gothons who are trying to take control
        of the bridge. EAch of them has an even uglier clown costume
        as the last. They haven't pulled their weapons out yet, as
        they see the active bomb under your arm and don't want
        to set it off.
        HEREDOC

        prompt()

        if @action == "throw the bomb"
            puts <<~HEREDOC
            In a panic, you throw the bomb at the Gothongs and make
            a leap for the door. Right as you drop it, a Gothon
            shoots you right in the back, killing you. As you die
            you see another Gothon frantically trying to disarm
            the bomb. You die knowing they will probably blow up
            as it goes off.
            HEREDOC

            return Death.new

        elsif @action == "slowly place the bomb"
            puts <<~HEREDOC
            You point your blaster at the bomb under your arm and the
            Gothons put their hand up and start to sweat. You inch
            backward to the door, open it, and carfully place the
            bomb on the floor, pointing the blaster at it. You jump
            back through the door, punch the close button, and blast
            the lock so the Gothons can't escape this tin can.
            HEREDOC

            return EscapePod.new

        else
            puts "DOES NOT COMPUTE!"
            return TheBridge.new
        end
    end
end