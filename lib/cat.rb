class Cat
  attr_accessor :mood, :owner 
  attr_reader :name
 
  @@all = [] #holds all the info of this class 

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"

    self.class.all << self  #shoves the current dog to []
  end

  def self.all  #allows you to use the info of this class 
    @@all
  end 

end