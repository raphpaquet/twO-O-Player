class Questions
  attr_accessor :answer, :show_question 
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
    @show_question = "What does #{@number1} plus #{@number2} equal ?"
  end
end 