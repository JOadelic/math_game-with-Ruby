class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end  

  def livesRemaining?()
    @lives > 0
  end

end


