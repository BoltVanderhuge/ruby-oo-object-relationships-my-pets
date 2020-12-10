require 'pry'
class Dog
  attr_reader :name
  attr_accessor :owner, :mood

  @@all = []

  def initialize (name_param, owner_param)
  @name = name_param
  @owner = owner_param
  @mood = "nervous"
  @@all << self
  end

  def self.all
    @@all
  end

end

# odie=Dog.new("Odie")

# binding.pry