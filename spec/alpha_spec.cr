require "./spec_helper"

describe Alpha do
  # TODO: Write tests

  describe Alpha::Board do
    it "can be initialized with id and name" do
      Alpha::Board.new("test", "Test").should be_a(Alpha::Board)
    end

    it "must have id and name to initialize" do
      # expect_raises(klass) do
        Alpha::Board.new()
      # end
    end
  end
end
