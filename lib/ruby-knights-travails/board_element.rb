class BoardElement
  attr_reader :x, :y, :visited

  def initialize(x, y)
    @x = x
    @y = y
    @visited = false
  end

  def available_indexes(max_size)
    available_moves = absolute_available_points
    available_moves.filter do |el|
      x = el.first
      y = el.last
      correct_point?(x, y, max_size)
    end
  end

  def change_visited(new_visited)
    @visited = new_visited
  end

  private

  def absolute_available_points
    [[x - 2, y - 1], [x - 2, y + 1], [x - 1, y - 2], [x - 1, y + 2], [x + 2, y - 1], [x + 2, y + 1],
     [x + 1, y - 2], [x + 1, y + 2]]
  end

  def correct_point?(x, y, size)
    x >= 0 && y >= 0 && x < size && y < size
  end
end
