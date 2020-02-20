require 'pry'

class Owner

  @@all = []
 attr_accessor :pets

def initialize (name,species = "human")
   @name = name
   @species = species
   @@all<<self
   @pets = {:dogs =>[],:cats=>[]}

  end

  def name
    @name
  end

   def species
   @species
  end


  def say_species
    "I am a #{species}."
  end

 def self.all
  @@all
end
# end

def self.count
  @@all.count
end

def self.reset_all
  @@all.clear
end

def cats
  Cat.all.select do |cat|
     cat.owner == self
end
end


def dogs
  Dog.all.select do |dog|
     dog.owner == self
end
end

def buy_cat(cat_name)
  @pets[:cats]=Cat.new(cat_name,self)
end

def buy_dog(dog_name)
  @pets[:dog]=Dog.new(dog_name,self)
end

 def walk_dogs
   dogs.each  do |dog|
     dog.mood = "happy"
 end
 end

 def feed_cats
   cats.each  do |cat|
     cat.mood = "happy"
 end
end
end 
# def say_species
#   @say_species
# end
