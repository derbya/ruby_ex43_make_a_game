class Death

    def play()
        quips = [
        "You died. You kind of suck at this.",
        "Nice Job, you died ...Jackass",
        "Such a loser.",
        "I have a small puppy that's better at this."
        ]
        puts
        puts quips[rand(quips.length())]
        Process.exit(1)
    end
end