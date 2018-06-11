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
#
#
#
#
#
#
