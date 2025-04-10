class Knight
  def self.find_path(current_pos, location_pos, board)
    find_path_loop(current_pos, location_pos, board, [[current_pos, []]])
  end

  def self.find_path_loop(current_pos, location_pos, board, queue = [[[], []]])
    current_item = queue.shift

    current_pos = current_item[0]
    current_path = current_item[1].dup

    current_path.push(current_pos)

    return current_path if current_pos == location_pos

    available_moves = board.available_moves_from(current_pos.first, current_pos.last)
    available_moves.each do |move|
      queue.push([move, current_path])
    end

    find_path_loop(current_pos, location_pos, board, queue)
  end
end
