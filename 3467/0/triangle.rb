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
# :reek:FeatureEnvy
def triangle(side_a, side_b, side_c)
  triangle_does_not_exists(side_a, side_b, side_c)

  return :equilateral if (side_a == side_b) && (side_b == side_c)
  return :isosceles if (side_a == side_b) || (side_b == side_c) || (side_c == side_a)

  :scalene
end

def triangle_does_not_exists(side_a, side_b, side_c)
  if side_a + side_b <= side_c ||
     side_b + side_c <= side_a ||
     side_c + side_a <= side_b
    raise TriangleError
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
