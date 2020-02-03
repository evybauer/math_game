class Players
  attr_accessor :name, :score, :lives

  def initialize(name, score = 0, lives = 3)
    @name = name
    @score = score
    @lives = lives
  end

end