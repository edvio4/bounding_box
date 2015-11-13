require_relative 'bounding_box'

class BoundingArea
  def initialize(boxes)
    @boxes = boxes
  end

  def boxes_contain_point?(x, y)
    flag = false
    @boxes.each { |box| flag = true if box.contains_point?(x,y) }
    flag
  end
end
