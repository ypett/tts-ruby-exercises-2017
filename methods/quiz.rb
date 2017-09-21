# ==begin
#     Build a quiz program that gets a few inputs from the user including:

#         * title of quiz
#         * number of questions
#         * questions
#         * answers
        
#     Then let the user either build more quizzes, or take a quiz. When taking a quiz, keep score!
# ==end

puts "Quizbuilder!"

# we're allow for multiple quizes.
# they will be stored in a Hash
# because they will have a title (Key)
# and then the questions and answers,
# stored in another Hash (Value)
@quizzes = {}

# define a menu method to
# guide users through program
def menu
    puts "What would you like to do?"
    puts "1. Build a Quiz"
    puts "2. Take a Quiz"

    choice = gets.chomp.to_i

    case choice
        when 1
            system "clear"
            build_quiz
        when 2
            system "clear"
            choose_quiz
        else
            system "clear"
            puts "Try Again."
            menu
    end 
end

def build_quiz
    print "Title your quiz: "
    title = gets.chomp

    print "How many questions should be in your quiz? "
    num = gets.chomp.to_i

    questions_and_answers = {}

    num.times do 
        puts "Enter a question:"
        q = gets.chomp
        # making the answers 'yes' or 'no' is easiest
        puts "What is the answer? [Y or N]"
        a = gets.chomp.upcase
        questions_and_answers[q] = a
    end

    @quizzes[title] = questions_and_answers
    system "clear"
    puts "Quiz Built!"
    menu
end

# there can be multiple quizzes,
# so we need to print out the titles
# and let the user choose one.
def choose_quiz
    # what if there's no quizzes yet?!
    if @quizzes.length == 0
        puts "No quizzes have been made yet!"
        puts "Get to it!"
        build_quiz
    # okay, but maybe there is some...
    else
        puts "Choose a Quiz"
        puts "-------------"

        # hash.keys returns an array
        # filled with the keys of that hash
        @quizzes.keys.each_with_index do |title, index|
            puts "#{index+1}. #{title}"
        end

        # we did this because we want the user
        # to choose a number, and we can associate
        # that number with a title, to pass on
        # to the next method
        choice = gets.chomp.to_i

        system "clear"
        take_quiz(@quizzes.keys[choice-1])
    end
end

# finally time to take the quiz,
# we'll use the title to look
# up in the @quizzes hash which
# quiz we're actually taking
def take_quiz(title)
    # gonna keep score!
    score = 0

    puts title.upcase
    puts "--------"

    @quizzes[title].each do |question, answer|
        puts question
        user_ans = gets.chomp.upcase

        if user_ans == "Y" || user_ans == "N"
            if user_ans == answer
                score += 1
            end
        else
            # if they don't give the correct
            # type of answer (Y or N), make
            # them try again.
            puts "Try again: Y or N"
            redo
            # redo this iteration
        end
    end

    puts "You got a score of #{score} out of #{@quizzes[title].length}!"
end

menu