class BoardElement
  attr_reader :x, :y

  def initialize(pos_x, pos_y)
    @x = pos_x
    @y = pos_y
  end

  def available_indexes(max_size)
    available_moves = absolute_available_points
    available_moves.filter do |el|
      x = el.first
      y = el.last
      correct_point?(x, y, max_size)
    end
  end

  private

  def absolute_available_points
    [[x - 2, y - 1], [x - 2, y + 1], [x - 1, y - 2], [x - 1, y + 2], [x + 2, y - 1], [x + 2, y + 1],
     [x + 1, y - 2], [x + 1, y + 2]]
  end

  def correct_point?(pos_x, pos_y, size)
    pos_x >= 0 && pos_y >= 0 && pos_x < size && pos_y < size
  end
end
