class TicTacToe
  
  DEFAULT_BOARD_SIZE = 3
   
  class Board
    
    attr_reader :rows, :cols, :diags
    
    def initialize(size)
      @cells = []
      (size ** 2).times { @cells << Cell.new }
      @rows, @cols, @diags = [], [], [[],[]]
      size.times do |i|
        row, col = [], []
        size.times do |j|
          row << @cells[i * size + j] 
          col << @cells[j * size + i]
        end
        @rows << row
        @cols << col
      end  
      size.times do |i|
        @diags[0] << @rows[i][i]
        @diags[1] << @rows[i][size - i - 1]
      end
    end
    
    def has_empty_cell(x,y)
      @rows[x][y].empty?
    end
    
    def set_cell(x,y,sym)
      @rows[x][y].set_as(sym)
    end
    
    def display
      @cells.map { |cell| cell.to_s }.join
    end 
    
  end
  
  class Cell
    def initialize
      @content = "_"
    end
    
    def to_s
      @content
    end
    
    def set_as(sym)
      @content = sym
    end

    def owned_by?(player)
      @content == player
    end
    
    def empty?
      @content == "_"
    end
  end
  
  def initialize(size = DEFAULT_BOARD_SIZE)
    @board = Board.new(size)
  end

  def show_board
    @board.display
  end 
  
  def play_at(x, y, symbol)
    if (@board.has_empty_cell(x,y))
      @board.set_cell(x,y,symbol)
    end
  end
  
  def has_been_won
    won_by("X") || won_by("O")
  end
  
  def won_by(player)
    owned_by_player = lambda { |cell| cell.owned_by?(player) }
    all_lines_owned_by_player = lambda { |line| line.all?(&owned_by_player) }
    [@board.rows, @board.cols, @board.diags].any? do |linetype| 
      linetype.any?(&all_lines_owned_by_player)
    end
  end
end
