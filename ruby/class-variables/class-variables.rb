
# Class Variables

# Class variables are easy.
# Simply create your new class, use the @@ to denote the variable as class
# level and add a getter method like so:

sep = "\n----------------------------------------\n"

class Polygon
  @@sides = 10
  def self.sides
    @@sides
  end
  def printer
    puts "hi"
    puts @@sides
  end
end


class PolygonB
  class << self; attr_accessor :sides end
  @sides = 10
end

#-------------------------------------------------------------------------------
puts sep
#-------------------------------------------------------------------------------

puts "class variable sides without new at class"
puts Polygon.sides # => 10

#
#-------------------------------------------------------------------------------
puts sep
#-------------------------------------------------------------------------------

puts PolygonB.sides
# a.sides


#-------------------------------------------------------------------------------
puts sep
#-------------------------------------------------------------------------------

