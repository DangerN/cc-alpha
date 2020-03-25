require "./spec_helper"

describe Alpha do
  # TODO: Write tests

  describe Alpha::Board do
    describe "#initialize" do
      it "can be initialized with id and name" do
        Alpha::Board.new("test", "Test").should be_a(Alpha::Board)
      end
    end

    describe "properties" do
      board = Alpha::Board.new("test", "Test")
      it "returns id" do
        board.id.should be_a(String)
      end
      it "returns name" do
        board.name.should be_a(String)
      end
      it "returns threads" do
        board.threads.should be_a(Hash(String, Alpha::Thread))
      end
    end

    describe "#add_thread" do
      board = Alpha::Board.new("test", "Test")
      it "should add post from json" do
        board.add_thread(%({"id":12345,"flags":[],"posts":[]}))
        board.threads["12345"].should be_a(Alpha::Thread)
      end
    end
  end
end
