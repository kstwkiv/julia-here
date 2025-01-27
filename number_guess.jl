function play_guess_game()
    total_numbers=25
    target=rand(1:total_numbers)
    guess=0
    println("Welcome to the Guessing Game!")
    println("Try to guess the number between 1 and $total_numbers.")
    println("Enter 0 anytime to quit the game.\n")
    while true
        print("Please guess a number between 1 and $total_numbers: ")

        guess = parse(Int64,readline())
        if  guess== 0
            println("You exited the game. Goodbye!")
            break
        end
        if guess < 1 || guess > total_numbers
            println("Your guess is out of bounds! Please stick to 1-$total_numbers.\n")
            continue
        end

        if abs(target - guess) <= 2 && target != guess
            println("You are getting closer!\n")
        elseif target != guess
            println("Try again, you're still far!\n")
        end
        if target==guess
            println("Great ! You have done it")
            break
        end
    end
end
# To play the game, just call:
# play_guess_game()