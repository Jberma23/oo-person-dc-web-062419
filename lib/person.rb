# your code goes here
require "pry"
class Person
    attr_reader :name
    @@all =[]
    def initialize(name, bank_account = 25, happiness = 8, hygiene=8 )
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene 
        @@all << self
    end
    def bank_account
        @bank_account
    end
    def bank_account= (bank_account)
        @bank_account = bank_account
    end
    def happiness
        if @happiness > 0 && @happiness < 10 
        @happiness
        elsif @happiness < 0
            0
        else 
            10
        end
    end
    def happiness= (happiness)
        @happiness= happiness
    end
    def hygiene 
        if @hygiene > 0 && @hygiene < 10 
            @hygiene
            elsif @hygiene < 0
                0
            else 
                10
            end
    end
    def hygiene= (h_value)
        @hygiene = h_value
    end
    def happy?
        if @happiness > 7 
            return true 
        else false
        end 

    end
    def clean?
        if @hygiene > 7 
            return true 
        else false
        end
    end
    def get_paid (salary)
        @bank_account = @bank_account + salary
        "all about the benjamins"
    end
    def take_bath 
       self.hygiene= @hygiene +4 #woks but does not use the hygiene= method
        
        "♪ Rub-a-dub just relaxing in the tub ♫"
        # binding.pry
    end
    def work_out 
        self.hygiene=@hygiene-3
        self.happiness=@happiness+2
        "♪ another one bites the dust ♫"
    end
  
    # def person_get_all
    #     @@all
    # end
    def call_friend(instance_friend)
        @@all.each {|friend|
        friend.happiness=friend.happiness + 3
        }
        "Hi #{instance_friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
            #binding.pry
            if topic == "politics"
                x= friend.happiness
                friend.happiness = x -2
                self.happiness = @happiness -2
                "blah blah partisan blah lobbyist"
           elsif topic == "weather"
            x= friend.happiness
            friend.happiness = x +1 
            self.happiness= @happiness +1
            "blah blah sun blah rain"
           else
            "blah blah blah blah blah"
           end 
    end



end 


