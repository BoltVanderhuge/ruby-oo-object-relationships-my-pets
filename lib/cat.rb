
class Cat
  attr_reader :name
  attr_accessor :owner, :mood

  @@all = []

  def initialize (name_parameter, owner_parameter)
    @name = name_parameter
    @owner = owner_parameter
    @mood = "nervous"
    @@all << self
  end

  def self.all
  @@all
  end

end