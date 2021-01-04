class Players
attr_accessor :lives, :name
  def initialize (name, lives)
    @lives = 3
    @name = name
  end

  def incorrect
    @lives -= 1
  end

  def gameover
    @lives == 0
  end
end 

