class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
    @@compass = ["N","E","S","W"]
  end

  def read_instruction(input)
    input.each_char do |c|
        if c == "L" || c == "R"
          turn(c)
        elsif c == "M"
          move(c)
        end
    end
  end


  def turn(command)
    position = @@compass.index(@direction)
    if command == "L"
      @@compass.rotate!(-1)
      @direction = @@compass[0]
    elsif command == "R"
      @@compass.rotate!
      @direction = @@compass[0]
    end
  end


  def move(direction)
    case @direction
      when "N"
        @y += 1
      when "E"
        @x += 1
      when "S"
        @y -= 1
      when "W"
        @x -= 1
    end
  end


  def to_s
    puts "#{x}, #{y} and facing #{@direction}"
  end

end

# one = Rover.new(1,2,"N")
# one.read_instruction("LMLMLMLMM")
# puts one

two = Rover.new(3,3,"E")
two.read_instruction("MMRMMRMRRM")
puts two