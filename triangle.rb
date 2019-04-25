# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#


# Solution 1
def triangle(a, b, c)
  raise TriangleError if [a,b,c].min <= 0
  x, y, z = [a,b,c].sort
  raise TriangleError if x + y <= z
  array = [a, b, c]
  array2 = array.select{|side| side.odd?}
  puts :equilateral if array2.length == 0
  puts :isosceles if array2.length == 1
  puts :scalene if array2.length == 3
end
# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end


# Solution 2
def triangle(a, b, c)
  return :equilateral if a == b && a == c
  return :isosceles if (a == b && a != c) || (b == c && b != a) || (a == c && a != b)
  return :scalene
end


# Solution 3
def triangle(a, b, c)
  sides = [a,b,c].sort

   raise TriangleError if sides.first <= 0 || sides[2] >= sides[1] + sides[0]
   return :equilateral if sides.uniq.length  == 1
   return :isosceles if sides.uniq.length  == 2
   :scalene
 end

