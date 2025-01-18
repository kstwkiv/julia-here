function rolling_dice()

    println("Enter the number of sides you want your dice to have :")
    num_of_sides_of_dice=parse(Int64,readline())
    while true
        print("Do you want to roll a dice? (1=Yes/0=No):")
        println("Before readline")
        guess=parse(Int64,readline())
        println("After readline")
        if guess==1
            println("Rolling dice....")
            current_side=rand(1:num_of_sides_of_dice)
            println("Dice has number $current_side")
        elseif guess==0
            println("Exiting....")
            break
        else
            println("Invalid input, please try again")
        end
    end

end