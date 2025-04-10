require_relative 'ruby-knights-travails/board'
require_relative 'ruby-knights-travails/knight'

board = Board.new(8)
p Knight.find_path([0, 0], [3, 3], board)
p Knight.find_path([0, 0], [7, 7], board)
p Knight.find_path([3, 3], [4, 3], board)
