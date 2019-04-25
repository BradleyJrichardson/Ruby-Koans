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
def triangle(a, b, c)
  array = [a, b, c].map{|side| side.odd?
  :equilateral if array.length == 0
  :isosceles if array.length == 1
  :scalene if array.length == 2
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
