class Game 
  attr_accessor :answer :usersAnswer

  def initialize(a)
    @answer = a
    @usersAnswer = $stdin.gets.chomp
  end

end



