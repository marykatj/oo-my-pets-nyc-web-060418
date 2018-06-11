class Cat

attr_reader :cat_name
attr_accessor :mood

  def initialize(cat_name)
  @cat_name = cat_name
  @mood = "nervous"
  end

  def name
    @cat_name
  end
end


# Cat.ancestors   [Dog, Object, Kernel, BasicObject].  Already inheriting from other Ruby classes
#
# Create Pet Class file
#
# class Pet
#   attr_accessor :mood
#   attr_reader: name
#
#   def initialize(name)
#     @name = name
#     @mood = "nervous"
#   end
# end
#
#class Cat < Pets
#class Dog < Pets
#class Fish < Pets
#
#
#class Cat < Pet
#
#   def initialize(name)      name needs to be defined within context here.  Super will call initialize method defined in pet.
#   super(name)               calls initialize method on cat, but tell it to expect argument (name).  Was being passed in somewhere, but not making it up
#   @num_lives = 9
#   end
# end

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
