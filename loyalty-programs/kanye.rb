class Person

    #initializing the instance variables
    def initialize(first_name)

        #assigning the arguement variables to the instance variables
        @first_name = first_name
        #@last_name = last_name
    end



    def name=(full_name)

        #takes in full_name and splits it to apply first and last names
        #but why?
        first_name, last_name = full_name.split
        @first_name = first_name
        #@last_name = last_name
    end




    def name
      #gets rid of white space — but why?
        #{}"#{@first_name} #{@last_name}".strip
    end

end


kanye = Person.new("Kanye")

puts kanye.name

kanye.name = "Yeezy"

puts kanye.name




superman = Person.new("Superman")

puts superman.name

#avoid using instance_variable_set —— bad practice and forces program to rely directly on @name variable
#this code is not flexible
superman.instance_variable_set(:@name, "Clark Kent")

puts superman.name
