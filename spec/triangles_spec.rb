require('triangles')
require('rspec')
require('pry')

describe("Triangle#check_sides") do
  it("will take three numbers and check see if a triangle is possible") do
  test_triangle = Triangle.new(3, 3, 8)
  expect(test_triangle.possible).to(eq(false))
  end
end
  describe("Triangle#type}") do
  it("will take three numbers and check for a scalene triangle") do
  test_triangle = Triangle.new(3, 4, 5)
  expect(test_triangle.type).to(eq("this is a scalene"))
  end
  it("will take three numbers and check for a isoceles triangle") do
  test_triangle = Triangle.new(3, 3, 5)
  expect(test_triangle.type).to(eq("this is an isosceles triangle"))
  end
  it("will take three numbers and check for an equilateral triangle") do
  test_triangle = Triangle.new(3, 3, 3)
  expect(test_triangle.type).to(eq("this triangle is equilateral"))
  end
  it("will employ the check_sides method to identify triangles") do
  test_triangle = Triangle.new(3, 3, 3)
  expect(test_triangle.check_sides).to(eq("this triangle is equilateral"))
  end
end
