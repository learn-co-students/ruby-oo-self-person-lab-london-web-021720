# your code goes here
class Person
    attr_reader :name
    attr_writer

    attr_accessor :bank_account, :happiness, :hygiene
    # Happiness and hygiene have a max of 10 and min of 0

    @@all = []

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        @@all << self
    end

    def happiness
        if @happiness > 10
            @happiness = 10
            @happiness
        elsif @happiness < 0
            @happiness = 0
            @happiness
        else
            @happiness
        end
    end

    def hygiene
        if @hygiene > 10
            @hygiene = 10
            @hygiene
        elsif @hygiene < 0
            @hygiene = 0
            @hygiene
        else
            @hygiene
        end
    end

    def self.all
        @@all
    end

    def clean?
        if @hygiene > 7
            return true
        else 
            return false
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def happiness_check(person)
        if person.happiness > 10
            person.happiness = 10
        elsif person.happiness < 0
            person.happiness = 0
        end
    end

    def hygiene_check(person)
        if person.hygiene > 10
            person.hygiene = 10
        elsif person.hygiene < 0
            person.hygiene = 0
        end
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        happiness_check(self)
        happiness_check(friend)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            happiness_check(self)
            happiness_check(person)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            happiness_check(self)
            happiness_check(person)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end


end
