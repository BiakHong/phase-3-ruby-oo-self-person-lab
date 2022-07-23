# your code goes here
class Person
    attr_accessor :happiness
    attr_accessor :hygiene
    attr_accessor :bank_account
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end
    def bank_account=(value)
        @bank_account = value
    end

    def happiness=(value)
        if value > 10
            @happiness = 10
        
        elsif value < 0
            @happiness = 0
          
        else
            @happiness = value
          
        end
      
    end
    def hygiene=(value)
        if value > 10
            @hygiene = 10
        
        elsif value < 0
            @hygiene = 0
          
        else
            @hygiene = value
          
        end
       
    end

    def happy?
        self.happiness >7
    end
    def clean?
        self.hygiene >7
    end

    def get_paid(amount)
        self.bank_account+=amount
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene +=4 
        return '♪ Rub-a-dub just relaxing in the tub ♫'


    end

    def work_out
        self.hygiene -=3
        self.happiness +=2
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness+=3
        friend.happiness +=3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"


    end
    
    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness -=2
            self.happiness-=2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness +=1
            self.happiness +=1

            return "blah blah sun blah rain"
        elsif topic == "programming"

            return  "blah blah blah blah blah"
        end

    end

    
end

biak = Person.new("Biak")
biak.happiness=20