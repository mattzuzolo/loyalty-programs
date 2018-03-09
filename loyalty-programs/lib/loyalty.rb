class Loyalty

  def initalize (selected_program = nil)
    @selected_program = selected_program
  end

      CHASE = ["British Airways", "Air France/KLM", "Korean Air", "Singapore Airlines", "Southwest", "United Airlines", "Virgin Atlantic", "Aer Lingus", "Iberia Airlines", "Hyatt", "IHG", "Marriott", "Ritz-Carlton"]

      AMEX = ["Air Canada", "Alitalia", "Cathay Pacific", "British Airway", "Delta Air Lines", "Etihad", "Hilton", "SPG"]

      CITI = ["JetBlue", "Turkish Airlines", "Cathay Pacific", "Avianca", "Etihad", "EVA Air", "Air France/KLM", "Garuda Indonesia", "Malaysia Airlines", "Qantas", "Qatar Airways", "Singapore Airlines", "Thai Airways", "Virgin Atlantic"]

      ONEWORLD = ["American Airlines", "British Airways", "Cathay Pacific", "Finnair", "Iberia Airlines", "Japan Airlines", "LATAM", "Malaysia Airlines", "Qantas", "Qatar Airways", "Royal Jordanian", "SriLankan Airlines", "S7 Airlines", ]

      STARALLIANCE = ["Adria Airways", "Aegean Airlines", "Air Canada", "Air China", "Air India", "Air New Zealand", "All Nippon Airways", "Asiana Airlines", "Austrian Airlines", "Avianca", "Brussels Airlines", "Copa Airlines", "Croatia Airlines", "EgyptAir", "Ethiopian Airlines", "EVA Air", "LOT Polish Airlines", "Lufthansa", "Scandavian Airlines", "Shenzen Airlines", "Singapore Airlines", "South African Airways", "Swiss International Air Lines", "Tap Portugal", "Thai Airways", "Turkish Airlines", "United Airlines"]

      SKYTEAM = ["Aeroflot", "Aerolineas Argentias", "Aeromexico", "Air Europa", "Air France/KLM", "Alitalia", "China Airlines", "China Eastern Airlines", "China Southern Airlines", "Czech Airlines", "Delta Air Lines", "Garuda Indonesia", "Kenya Airways", "Korean Air", "Middle East Airlines", "Saudia", "TAROM", "Vietnam Airlines", "XiamenAir"]



    def welcome
        puts "Welcome! Please choose your loyalty program:"
        puts "Amex"
        puts "Chase"
        puts "Citi"
        input = gets.strip.downcase

        #checks if input is valid
        if valid_input?(input)

          #lists transfer options if valid
          puts @selected_program
          #transfer_options (input)


        else
          #runs welcome until a user enters a valid input
          welcome
        end #end if/else

    end #ends welcome






      #checks if the user input a valid loyalty program
    def valid_input? (input)
        #if statement verifies valid input to continue
        if input == "amex"
          @selected_program = AMEX
          return true

        elsif input == "chase"
          @selected_program = CHASE
          return true

        elsif input == "citi"
          @selected_program = CITI
          return true
        end #ends if/else statement

    end #ends valid_input?




    # def transfer_options (input)
    #     puts "You have selected the #{input} loyalty program"
    #     puts "You can transfer your points to the following airlines and hotel chains:"
    #     puts " "

    #       if input == "amex"
    #         puts AMEX
    #         return AMEX

    #       elsif input == "chase"
    #         puts CHASE
    #         return CHASE

    #       elsif input == "citi"
    #         puts CITI
    #         return CITI

    #       end #ends if/else statement

    # end




    def alliance_bookings

      puts " "
      puts "Using airline alliance and partner benefits, you can book flights on other airlines."
      puts "Please input one of the above airlines to see more booking possibilities."

      airline_search = gets.strip
      if valid_airline? (airline_search)

        puts "You can book flights on these airlines by transferring your points to #{airline_search}:"
        puts search_alliances (airline_search)

      else
        alliance_bookings
      end #ends if/else

      search_alliances (airline_search)

    end #ends alliance_bookings





    def valid_airline?(airline_search)

      #welcome.find repeating? — need to pass in the transfer options.
      @selected_program.find do |airline_match|
        if airline_search == airline_match
          return true
        else
          return false
        end #ends if/else
      end #ends iteration

    end  #ends #valid_airline?





    def search_alliances (airline_search)

      ONEWORLD.find do |airline_match|
        if
          airline_match == airline_search
          return ONEWORLD
        end#end if statement
      end #ent iteration

      STARALLIANCE.find do |airline_match|
        if
          airline_match == airline_search
          return STARALLIANCE
        end#end if statement
      end #ent iteration

      SKYTEAM.find do |airline_match|
        if
          airline_match == airline_search
          return SKYTEAM
        end#end if statement
      end #ent iteration

      puts "This airline is not part of an alliance."


    end #ends #search_alliances






    def live

      #returns an array of credit card loyalty program transfer partners
      welcome

      #user selects one airline from this list. It outputs the alliance partners.
      alliance_bookings

    end


end #ends Object oriented class
