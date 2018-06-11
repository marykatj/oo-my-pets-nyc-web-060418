require "pry"         # learn --f-f

class Owner

  attr_reader :species            #assume least amount of mutability
  attr_accessor :pets, :name      #name & name=
  @@owners = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self            # self.class.all << self    relying on method, instead of literal variable.  Need to be explicit with 'self' here
  end

  def self.all
    @@owners              #layer of abraction, if code changes, only need to change in 1 place.  use self.all to reference @@owners array
  end

  def self.count
    @@owners.length          #self.all.length       since in a class method (self.count) refer to self.all.length (instead of self.class.all.length)
  end                                               #if this was an instance method, then call self.class.all.length. can call self implicitly.   Implicit self.pets

  def self.reset_all
    @@owners.clear            #self.all.clear
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)           #pets[:cats] << Cat.new(cat_name)......optional: self.pets[:cats] << Cat.new(cat_name)
    @pets[:cats].push(new_cat)          #ruby recognizes this as an instance method, knows its an instance property, and operates accordingly
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    @pets[:dogs].push(new_dog)
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes].push(new_fish)
  end

  def species
    @species = "human"
  end

  def say_species
    return "I am a #{species}."
  end

  def walk_dogs
    @pets[:dogs].each do |dog|        #self.pets[:dogs].each { |dog| dog.mood = "happy" }
      dog.mood = "happy"              #map versus each - depends on whether we are using the return value. Use .each because dont carea about return value
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |animal, animal_names|      #self.pets.each do |pet_type, pet_array|
      animal_names.each do |name|
        name.mood = "nervous"
      end
      animal_names.clear        #or reset to the original value
    end
  end

  def list_pets
    fish_count = @pets[:fishes].count
    cat_count = @pets[:cats].count
    dog_count = @pets[:dogs].count
    return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

  def name
    @name
  end

  def pets
    @pets
  end



end
