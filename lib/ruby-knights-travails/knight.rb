class Knight
  def self.find_path(current_pos, location_pos, board)
    return nil unless board.correct_point?(location_pos[0], location_pos[1], board.size)
    return nil unless board.correct_point?(current_pos[0], current_pos[1], board.size)

    find_path_loop(location_pos, board, [[current_pos, []]])
  end

  def self.find_path_loop(location_pos, board, queue = [[[], []]])
    current = queue.shift

    current_pos = current[0]
    current_path = current[1].dup

    current_path.push(current_pos)

    return current_path if current_pos == location_pos

    available_moves = board.available_moves_from(current_pos.first, current_pos.last)
    available_moves.each do |move|
      queue.push([move, current_path])
    end

    find_path_loop(location_pos, board, queue)
  end
end
