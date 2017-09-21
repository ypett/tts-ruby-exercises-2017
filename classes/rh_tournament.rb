# First we define a class to work with:
class Team

    attr_accessor :name, :ranking

    def initialize(name, ranking)
        @name = name
        @ranking = ranking
    end

end

# next, we'll initiate an Array
# to save Team objects in
@teams = []

# Now we can start defining methods
# to be used. Since we asked that the
# various aspects of the program be re-usable,
# we'll need to utitlize methods.

# We'll start with the "menu" method:
def menu
    puts "Welcome to My Tournament Generator. Enter a selection:"
    puts "1. Enter teams"
    puts "2. List teams"
    puts "3. List matchups"
    puts "0. Exit program"

    choice = gets.chomp.to_i

    # use case or if/elsif
    case choice
        when 1
            clear_screen # see very next method defined!
            enter_teams
        when 2
            clear_screen
            list_teams
        when 3
            clear_screen
            matchups
        when 0
            clear_screen
            puts "Okay, catch ya later."
        else
            clear_screen
            # return to the top of this method
            # if given a number not listed in menu
            puts "Not a valid selection. Try again, please."
            menu
    end
end

# here is a method to clear the screen
# no matter what platform you're running
# this program on.
def clear_screen
    Gem.win_platform? ? (system "cls") : (system "clear")
end

# if we want to go back to the menu
# at any point:
def return_to_menu
    puts "Return to Menu? [y/n]"
    ans = gets.chomp.downcase

    case ans[0]
        when "y"
            clear_screen
            menu
        when "n"
            clear_screen
            puts "Okay. Well...see you around, then. I guess."
        else
            clear_screen
            puts "Huh? Yes or No, please."
            return_to_menu
    end
end

# a method for creating new teams,
# and storing them in the @teams Array
def enter_teams
    puts "Enter team names & rankings. When finished, type in 'done' instead of team name."

    name = ''
    while name != 'done'
        print "School Name: "
        name = gets.chomp
        if name.downcase == 'done'
            break
        end
        print "Ranking: "
        ranking = gets.chomp.to_i

        # what if the user enters
        # team with the same ranking
        # as one already entered?
        while rank_check(ranking) # check below for this method
            puts "There's already a team with that ranking."
            print "Please check your facts and re-enter ranking: "
            ranking = gets.chomp.to_i
        end

        @teams.push(Team.new(name, ranking))
    end
    # sorting the teams by ranking:
    @teams.sort! { |a,b| a.ranking <=> b.ranking }
    #@teams = @teams.sort_by {|team| team.ranking}
    return_to_menu
end

# a method to see if the ranking
# entered for a new Team is the
# same as one for a Team already
# in our @teams Array.
def rank_check(num)
    ranking_exists = false
    @teams.each do |t|
        if num == t.ranking
            ranking_exists = true
        end
    end
    return ranking_exists
end

# a method to simply list out
# the Teams in our Array
def list_teams
    puts "Here are the Teams..."
    # new thing! sleep() tells your program
    # to wait a certain amount of seconds
    # (passed as argument) before continuing
    sleep(1)
    puts "---------------------"

    @teams.each do |team|
        puts "#{team.ranking}. #{team.name}"
    end
    return_to_menu
end

# finally, a method to perform
# the team matchups
def matchups
    # we will create a temporary array
    # for use only in this method,
    # so we don't effect the original
    # @teams array with an deletions
    temp_arr = []
    @teams.each do |t|
        temp_arr.push(t)
    end

    if temp_arr.length % 2 != 0
        # check if there is an odd number of teams,
        # if there is an odd number, we pull pull
        # out the top one and give them a bye week
        puts "(1) #{temp_arr.delete_at(0).name} has a bye"
        # and now we have an even number of teams
    end

    # match up the even amount of teams,
    # assuming there are any teams...
    while temp_arr.length > 0
        team1 = temp_arr.delete_at(0)
        # team 1 is the first one in array
        team2 = temp_arr.pop
        # team 2 is last in array
        puts "(#{team1.ranking}) #{team1.name} versus (#{team2.ranking}) #{team2.name}"
        # this continues until no teams are left in the array
        # Example:
        # [1,2,3,4,5,6]
        # team1 = 1
        # team2 = 6
        # [2,3,4,5]
        # team1 = 2
        # team2 = 5
        # [3,4]
        # team1 = 3
        # team2 = 4
    end

    return_to_menu
end

# let's get this thing going!
# call the "menu" method to
# start things off!
menu