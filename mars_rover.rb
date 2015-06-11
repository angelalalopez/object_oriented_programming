class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end
end

  puts "What is the plateau size? (Ex. 5 5)"
  @p_size = gets.chomp

  puts "What are the current coordinates and direction of Rover 1? Ex. 3 4 E"
  @current1 = gets.chomp

  puts "What are your instructions for Rover 1?"
  @moves1 = gets.chomp

  puts "What are the current coordinates and direction of Rover 2? Ex. 3 4 E"
  @current2 = gets.chomp

  puts "What are your instructions for Rover 2?"
  @moves2 = gets.chomp


  def read_instruction

  end


  def move

  end


  def turn

  end




  # def newrover(data) < Rover
  #   Rover.new(data)
  # end

  # puts newrover(@current)

# = gets.chomp