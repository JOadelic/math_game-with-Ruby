class Question
  attr_accessor :a, :b, :sum, :prompt

  def initialize()
    @a = rand(20)
    @b = rand(20)
    @sum = @a + @b
    
    @prompt = "What is #{a} + #{b}?"
  end

end





