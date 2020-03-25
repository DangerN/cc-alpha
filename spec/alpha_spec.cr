require "./spec_helper"

describe Alpha do
  # TODO: Write tests

  describe Alpha::Board do
    it "can be initialized with id and name" do
      board = Alpha::Board.new("test", "Test")
      board.should be_a(Alpha::Board)
    end
  end

  it "works" do
    false.should eq(false)
  end
end
