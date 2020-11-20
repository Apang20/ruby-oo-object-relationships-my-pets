class Dog
attr_accessor :mood, :owner
attr_reader :name

@@all = [] #holds all the info of this class 

def initialize(name, owner)
  @name = name
  @owner = owner 
  @mood = "nervous"

  self.class.all << self #pushes the dog info to the []
end

def self.all #allows you to use the dog []
  @@all
end 
end