require_relative 'board_element'
class Board
  attr_reader :size

  def initialize(size)
    @size = size
    @board = create_board(size)
  end

  def create_board(size)
    Array.new(size) { |y| Array.new(size) { |x| BoardElement.new(x, y) } }
  end

  def available_moves_from(x, y)
    @board[y][x].available_indexes(@size)
  end

  def correct_point?(x, y, size)
    x >= 0 && y >= 0 && x < size && y < size
  end
end
