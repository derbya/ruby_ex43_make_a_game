require './death.class.rb'

class EscapePod
    
    def prompt()
        print "[pod#]> "
        @number = gets.chomp()
    end

    def play()
        puts <<~HEREDOC
        You rush through the ship desperately trying to make it to
        the escape pods before the whole ship explodes. It seems
        like hardly any Gothons are on the ship, so your run is
        clear of interference. You get to the chamber with the
        escape pods, and now need to pick on to take. Some of the
        pods could be damaged but you don't have time to look. There
        are 5 pods, which one do you take?
        HEREDOC

        good_pod = rand(5) + 1
        prompt()

        if @number.to_i != good_pod
            puts "You jump into pod %s and hit the eject button" % @number
            puts <<~HEREDOC
            The pod escapes out into the void of space, then
            implodes as the hull ruptures, crushing your body
            into jam jelly.
            HEREDOC

            return Death.new

        else
            puts "You jump into pod %s and hit the eject button" % @number
            puts <<~HEREDOC
            The pod easily slides out into space, heading to
            the planet below. As it flies to the planet, you look
            back and see your ship implode, then explode like a
            bright start, taking out the Gothon ship at the same time!
            you won!
            HEREDOC

            Process.exit(0)
        end
    end
end