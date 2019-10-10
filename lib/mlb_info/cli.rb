
class MLBInfo::CLI

    def call
        MLBInfo::Scraper.new.make_teams
        puts "Welcome to MLB Teams!"
        puts ""
        menu
    end

    def goodbye
        "See you later and GO ASTROS!"
    end

    def menu
        puts "Enter teams for a list of all Major League Baseball teams!"
        puts ""
        puts "Enter a team name for more information about that team!"
        puts ""
        puts "Enter exit to leave...."
        puts ""
        input = gets.strip
    
        if input == "teams"
            puts ""
            print_teams
            puts ""
            menu  
            binding.pry     
        elsif MLBInfo::Teams.all.detect {|team| team.name == input}
            team = MLBInfo::Teams.all.detect {|team| team.name == input}
            print_teams_more_info(team)
            puts ""
            menu
        elsif input == "exit"
            puts ""
            puts "Thanks for looking! Have a great day and GO ASTROS!"
            puts ""
            exit
        else
            puts ""
            puts "Please enter correct input!"
            puts ""
            menu
        end
    end

    

    def print_teams
        MLBInfo::Teams.all.each {|team| puts team.name}  
    end

    def print_teams_more_info(team)
        puts ""
        puts "You can get even more information about this team at #{team.website}."
        puts ""
        puts "The #{team.name} plays their home games at #{team.park}."
    end

end