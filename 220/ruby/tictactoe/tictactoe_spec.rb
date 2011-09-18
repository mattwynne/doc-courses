require './tictactoe'

describe TicTacToe do
  
  before(:each) do
    @game = TicTacToe.new(3)
  end
  
  it "starts with an empty board" do
    @game.show_board.should == "___" + "___" + "___"
  end
  
  it "allows players to place symbols using coordinates" do
    @game.play_at(0,0, "X")
    @game.show_board.should == "X__" + "___" + "___"
    @game.play_at(1,1, "O")
    @game.show_board.should == "X__" + "_O_" + "___"
  end

  it "prevents player playing in already filled place" do
    @game.play_at(0,0, "X")
    @game.play_at(0,0, "O")
    @game.show_board.should == "X__" + "___" + "___"
  end
  
  it "detects a horizontal winning line" do
    @game.play_at(0,0,"X")
    @game.play_at(0,1,"X")
    @game.has_been_won.should == false
    @game.play_at(0,2,"X")
    @game.has_been_won.should == true
  end

  it "detects a vertical winning line" do
    @game.play_at(0,0,"O")
    @game.play_at(1,0,"O")
    @game.has_been_won.should == false
    @game.play_at(2,0,"O")
    @game.has_been_won.should == true
  end

  it "detects a forward diagonal winning line" do
    @game.play_at(0,0,"O")
    @game.play_at(1,1,"O")
    @game.has_been_won.should == false
    @game.play_at(2,2,"O")
    @game.has_been_won.should == true
  end

  it "detects a reverse diagonal winning line" do
    @game.play_at(0,2,"O")
    @game.play_at(1,1,"O")
    @game.has_been_won.should == false
    @game.play_at(2,0,"O")
    @game.has_been_won.should == true
  end
  
  it "allows the board size to be specified and checks rules appropriately" do
    small_game = TicTacToe.new(2)
    small_game.play_at(0,0,"O")
    small_game.has_been_won.should == false
    small_game.play_at(1,0,"O")
    small_game.has_been_won.should == true
  end
end
