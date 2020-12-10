require 'pry'
require_relative 'cat.rb'
require_relative 'dog.rb'

class Owner

  attr_reader :name, :species

  @@all = []

  def initialize (name_param)
  @name = name_param
  @species = "human"
  @@all << self
  end

  def say_species
  "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.find_all {|element| element.owner == self}
  end

  def dogs
    Dog.all.find_all {|element| element.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name,self)
  end

  def walk_dogs
    Dog.all.each{|element| element.mood = "happy"}
  end

  def feed_cats
    Cat.all.each{|element| element.mood = "happy"}
  end

  def sell_pets
    pets = self.cats + self.dogs 
    pets.each do |element|
    element.owner = nil
    element.mood = "nervous"
    end
  end
    
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

  

end

# john = Owner.new ("John")

  