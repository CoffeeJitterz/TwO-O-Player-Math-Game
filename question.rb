class Question
  attr_reader :question, :answer
  
  def generate
  @number1 = rand(1...21)
  @number2 = rand(1...21)
  @question = "What does #{@number1} plus #{@number2} equal?"
  @answer = @number1 + @number2
  return @question
  end

  def check(number)
    if number === self.answer
      true
    else
      false
    end
  end
end