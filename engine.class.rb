require './central_corridor.class.rb'
require './death.class.rb'
#Engine class will take a class when it is initialized
#then call that's class' play() function.
class Engine
    
    def initialize(room)
        @room = room
    end
   #start will start the game with the roomo given
   #during initialization 
    def start()
        while true
            @room = @room.play()
        end
    end
end
# create a new Engine class, initialized with the
#first class (room) to start
runner = Engine.new(CentralCorridor.new)
runner.start()