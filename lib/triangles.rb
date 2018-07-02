class Triangle
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def check_sides
    if possible()
      "this is a possible triangle"

    else
      "this is not a possible triangle"
    end
  end

  def possible
    if ((@side_one + @side_two > @side_three) && (@side_two + @side_three > @side_one) && (@side_three + @side_one > @side_two))
      true
    else
      false
    end
  end

  def type
    check_array = [@side_one, @side_two, @side_three].uniq!
    if check_array == nil
      "this is a scalene"
    elsif check_array.length == 2
      "this is an isosceles triangle"
    elsif check_array.length == 1
      "this triangle is equilateral"
    end
  end
end
