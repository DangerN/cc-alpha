# TODO: Write documentation for `Alpha`
require "http/web_socket"
require "json"
require "./cc-alpha/*"

module Alpha
  VERSION = "0.1.7"
  @@boards = {} of String => Board

  def self.boards
    @@boards
  end

  # Create a hash representation of all board ids names and flags.
  def self.board_list
    board_list = {} of String => Hash(String, String | Array(String))
    @@boards.keys.map do |board|
      board_list[board] = {"name" => @@boards[board].name, "flags" => @@boards[board].flags}
    end
    board_list
  end

  def self.boards=(boards)
    @@boards = boards
  end
end

def board_by_id(board_id)
  Alpha.boards[board_id]
end

def add_board_from_json(board_json)
  new_board = Alpha::Board.from_json(board_json)
  Alpha.boards[new_board.id] = new_board
end

def board_list
  Alpha.board_list
end

def test_board
  add_board_from_json(%({"id":"test","name":"Test","flags":[],"threads":{}}))
end
