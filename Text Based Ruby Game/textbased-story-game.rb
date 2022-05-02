# # TEXT BASED GAME

# # Game intro 

p 'Bad Trip'
p '----------------------------------------'
p 'Press The Enter Key To Begin'
start_game = gets.chomp

p "... You awake dazed and confused in the cold forest... the last thing you remember is drinking from a nearby river, but you can't remember how long ago that could have been...It's night now and you're getting cold. You need to do something NOW before the cold gets you"
p " ---------------------------------------"
p 'Do you remember your name, what is it?'
user_name = gets.chomp

#------------------------------------------------------------------

p "...#{user_name}, you hear something yelling in the distance but can't be sure what it is..What do you do?"

p "1) Follow the strange voice"
p "2) Look around"
user_choice1 = gets.chomp.to_i

def userchoice_decider1 user_choice1
    if user_choice1 == 1
        " You follow the strange voice north and it leads you to a large cabin in a dense area of the forest, only to be greeted by a man..or is it a beast? That towers over you standing 12 feet tall, covered in hair while wielding an axe. Also he has on a pretty sick and rad flannel, dude's probably a lumberjack. He looks like he is waiting for you to say something..."
    elsif user_choice1 != 1 
        'You start searching around the immediate area you woke up in, after checking behind some bushes, you find a pair of shoes, unopened water bottle, hunting knife, a half eatin twinkie'
    end
end

    
p '---------------------------------------------'
p userchoice_decider1(user_choice1)


#---------------------------------------------------

# p " You follow the strange voice and it leads you to a large cabin in a dense area of the forest, only to be greeted by a man..or is it a beast? That towers over you standing 12 feet tall, covered in hair while wielding an axe. Also he has on a pretty sick flannel, dude's probably a lumberjack. He looks like he is waiting for you to say something..."

p "1) Thanks for calling out like that, I was so lost. "
p "2) Are you seriously a lumberjack? Nerd."

user_choice2 = gets.chomp.to_i

def userchoice_decider2 user_choice2
    if user_choice2 == 1
        "Lumberjack: I thought I heard someone over there, it's easy to get lost or hurt in these woods. Why on earth are you in my woods and out here completely naked?"
    else
        'Lumberjack: Stop dude, thats not nice.' 
    end
end

p userchoice_decider2(user_choice2)

p '1) I only remember my name, I can’t remember how I even got here!'

p "2) To steal all your flannels...and your head, it will look nice mounted above my hearth"

user_choice3 = gets.chomp.to_i

def userchoice_decider3 user_choice3
    if user_choice3 == 1
        "The Lumberjack says : I have only been trying to help since you walked up to my cabin...naked might I add... do you want to get out of these woods or not?!"
    else
        'Lumberjack: Sucks for you, I eat humans so good luck.' 
    end
end

# p userchoice_decider3(user_choice3)
"----------------------------------------------------------------"
p "#{userchoice_decider3(user_choice3)}"


p "1) Thank you so much for the help"
p "2) I don't need help from some dusty old lumberjack, who also might be a bear or something"
if user_choice1 != 1
    p "3) You use your knife to attack the stranger. 'Take this you dusty, old lumberjack."
end
    user_choice4 = gets.chomp.to_i

user_score = user_choice2 + user_choice3

def userchoice_decider4 num, pc_choice4
    if num == 4 and pc_choice4 == 1
        "You're pretty, rude for a nude dude. PRESS ENTER TO CONTIUE..."
    elsif pc_choice4 == 1 
        'The Lumberjack, gives you some clothes and safely guides you back to civilization... PRESS ENTER TO CONTIUE...'
    else
        "DON'T CALL ME DUSTY, I am a ManBear. (The ManBear appears to be enraged after your comment, and turns into a massive bear.)" 
    end
end

p userchoice_decider4(user_score, user_choice4)

end_of_game = gets.chomp

user_final_score = user_choice2 + user_choice3 + user_choice4

def win_or_lose num, uc1, uc2, uc3, uc4
    if uc1 != 1 and uc4 == 3
        "GAME OVER: You're an idiot for trying to attack a bear... especially naked. Oh well, now you're easier to eat for the bear."
    elsif uc2 == uc3 and uc4 and uc2 == 1
        "YOU WIN: Thanks to your friendly character, the bear takes pitty on you and gives you some supplies to make it back to civilization, which includes food, clean water, and a radical flannel."
    elsif num <= 4
        'YOU WIN: You are guided out of the woods by the lumberjack.'
    else
        "GAME OVER: The lumberjack was actually a bear in disguise and now you have gotten yourself eaten for being so rude to the fine gentleman Bear."
    end
end

p win_or_lose(user_final_score, user_choice1, user_choice2, user_choice3, user_choice4)



# [user_choice2,user_choice3,user_choice4]

# 1, 1, 1 = good = 3
# 1, 2, 1 = good = 4
# 2, 1, 1 = good = 3
# 2, 2, 1 = bad = 5
# 2, 2, 2 = bad = 6







