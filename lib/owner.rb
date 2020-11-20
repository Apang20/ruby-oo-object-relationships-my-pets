require 'pry'

class Owner
  attr_accessor :dogs, :cats, :pets
  attr_reader :species, :name, :say_species

  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self #instance self 
  end 

  def self.all  #class self
    @@all
  end 

 def say_species
  "I am a #{species}."
end 

def self.count
  @@all.length
end 

def self.reset_all
  @@all.clear 
end 

def cats
  Cat.all.select do | cat |
    cat.owner == self
  end 
end 

def dogs
   Dog.all.select do | dog |
    dog.owner == self 
end 
end 


def buy_cat(name)
   Cat.new(name, self)
end

def buy_dog(name)
   Dog.new(name, self)
end

def walk_dogs
  self.dogs.each do |dog|
  dog.mood = "happy"
end 
end
  
def feed_cats
  self.cats.each do |cat|
    cat.mood = "happy"
end
end

def sell_pets
  sell_cat = Cat.all.select do |cat|
    if cat.owner == self
    cat.mood = "nervous"
    cat.owner = nil
    end
  end
  sell_dog = Dog.all.select do |dog|
    if dog.owner == self
      dog.mood = "nervous"
      dog.owner = nil 
    end
  end

end  

def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  #self.dog.count
  #dog.count 
end 
end

# jesus1 = Owner.new("owner")
# jesus1.buy_cat("mochi")

# # def buy_cat(name)
#   Cat.new(name, self)
# end


#binding.pry 
#0