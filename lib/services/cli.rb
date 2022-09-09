class Cli 

    def start 
        puts ""
        puts "\t ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "\t           ~~~~~~~Greetings Traveler!~~~~~~~"
        puts "\t   ~~~~~Initiating Genshin Impact Character Archive~~~~~"
        puts "\t ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts ""
        
        Api.load_data 
        main_menu
    end

    def main_menu
        list_characters
        print "Choose a character (1-54)"
        input = gets.chomp.to_i
        puts ""

        if (1..54).include?(input)
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts "Character Name: #{}"
            puts "Description: #{}"
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts ""
            sub_menu 
        else
            puts "~~~Error. Please try again.~~~"
            main_menu
        end
    end

    def list_characters 
        puts ""
        puts "\t\t ~~~ Character List ~~~"
        column1 = 0
        column2 = 10
        while column1 < 10
            puts "#{column1 + 1}. #{GhibliFilm.all[column1].title} \t\t #{column2 + 1}. #{GhibliFilm.all[column2].title}"
            column1 += 1
            column2 += 1
        end
        puts ""
    end

    def sub_menu
        pint "Choose another character? (Y/N): "
    input = gets.chomp 
    puts ""
    case input.downcase
    when "y"
        main_menu 
    when "n"
        exit_program
    else 
        puts "~~~Invalid Input, try again.~~~"
        puts ""
        sub_menu
    end

end 

def exit_program
    puts ""
    puts "~~~~~~~Goodbye Traveler!~~~~~~~"
    puts ""
end
end