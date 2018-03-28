class Loyalty

    def initialize(selected_program)
        @selected_program = selected_program

    end

    def selected_program=(selected_program)
        @selected_program = selected_program

    end


    def selected_program
        @selected_program
    end

    def self.welcome
        puts "Welcome! Please choose your loyalty program:"
        puts "Amex"
        puts "Chase"
        puts "Citi"

        #no command line to get input yet
        #valid_input method requires input is lowercase
        #input = gets.strip.downcase

        if valid_input?(input)
            @selected_program = input
        else
            #runs welcome until user enters a valid input
            welcome
        end #ends if/else statement


    end #ends welcome method


    #checks if user input a valid loyalty program from the list
    def self.valid_input?(input)

      #if statement returns true if input is valid
      if input == "amex"
        @selected_program = AMEX
        return true

      elsif input == "chase"
        @selected_program = CHASE
        return true

      elsif input == "citi"
        @selected_program = CITI
        return true
      end #ends if/elsif statement

    end #ends valid_input?





end #ends Loyalty class




delta = Loyalty.new("Delta")

puts delta.selected_program
