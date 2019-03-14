class Person

attr_reader :name, :hygiene, :happiness
attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def hygiene=(new_hygiene)

    if new_hygiene > 10
      @hygiene = 10
    elsif new_hygiene < 0
        @hygiene = 0
    else @hygiene = new_hygiene
    end

  end

  def take_bath
    self.hygiene=(@hygiene += 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def happiness=(new_happiness)

    if new_happiness > 10
      @happiness = 10
    elsif new_happiness < 0
        @happiness = 0
    else @happiness = new_happiness
    end

  end

  def work_out
    self.happiness=(@happiness += 2)
    self.hygiene=(@hygiene -= 3)

    return "♪ another one bites the dust ♫"

  end

  def call_friend(friend)
    #self.happiness=(self.happiness += 3)
    #friend.happiness=(friend.happiness += 3)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -=2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end







end
