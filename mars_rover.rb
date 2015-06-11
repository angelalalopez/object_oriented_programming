class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  @@compass = ["N","E","S","W"]

  DIRECTION_MATH = {
    :N => [0, 1],
    :E => [1, 0],
    :S => [0, -1],
    :W => [-1, 0]
  }

input.each_char{|c| c.read_instruction}

  def read_instruction(input)
    if input == "L"
      puts "turn(input)"
    elsif input == "R"
      puts "turn(input)"
    elsif input == "M"
      puts "move(input)"
    end
  end


  def turn(command)
    if command == "L"
      @@compass.rotate!(-1)
    elsif command == "R"
      @@compass.rotate!
    end
    puts @@compass[0]
  end

  # def move(input)
  #   Dx, Dy = DIRECTION_MATH[input]
  #   # if input == "N"
  #   # elsif input == "E"
    # elsif input == "S"
    # elsif input == "W"
    # end
  # end

  def math
    puts @@compassMath
  end

  def to_s
    puts ""

  end

end

one = Rover.new(4,6,"N")
# one.turn("R")
# one.move(@direction)
one.read_instruction("R")