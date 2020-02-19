# your code goes here
class Person 
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    
    def initialize(name)
       @name = name 
       @bank_account = 25
       @happiness = 8
       @hygiene =8 
    end

    def happiness=(happiness)
        
        output = happiness
        if happiness > 10
            output = 10
        elsif happiness < 0
            output = 0
        end
        @happiness = output
    end

    def hygiene=(hygiene)
        
        output = hygiene
        if hygiene > 10
            output = 10
        elsif hygiene < 0
            output = 0
        end
        @hygiene = output
    end

    def happy?
        happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        return 'all about the benjamins'
    end

    def take_bath
        hygiene = @hygiene + 4
        self.hygiene = hygiene

        return "♪ Rub-a-dub just relaxing in the tub ♫"

    end

    def work_out
        dirty = @hygiene - 3 
        self.hygiene = dirty
        increase_happiness(2)
        return "♪ another one bites the dust ♫"
    end

    def increase_happiness(increase)
        new_happiness = @happiness + increase
        self.happiness = new_happiness
    end

    def decrease_happiness(decrease)
        new_happiness = @happiness - decrease
        self.happiness = new_happiness
    end

    def call_friend(person)
        increase_happiness(3)
        person.increase_happiness(3)

        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        output = ""
        if topic == "politics"
            output = "blah blah partisan blah lobbyist"
            decrease_happiness(2)
            person.decrease_happiness(2)
        elsif topic == "weather"
            output = 'blah blah sun blah rain'
            increase_happiness(1)
            person.increase_happiness(1)
        else
            output = "blah blah blah blah blah"
        end

        output
    end



end 