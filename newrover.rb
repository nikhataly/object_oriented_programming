class Plateau
    def initialize (width, height)
        @width = width
        @height = height
    end
end

class Rover
    def initialize(x_init, y_init, direction_init)
        @x = x_init.to_i
        @y = y_init.to_i
        @direction = direction_init
    end

    def move_forward
        if @direction == "N"
            @y += 1
        elsif @direction == "E"
            @x += 1
        elsif @direction == "S"
            @y -= 1
        elsif @direction == "W"
            @y -= 1
        else
            puts "Not a valid direction"
         end
    end

    def turn_left
        if @direction == "W"
            @direction = "S"
        elsif @direction == "S"
            @direction = "E"
        elsif @direction == "E"
            @direction = "N"
        else @direction == "N"
            @direction = "W"
        end
    end

    def turn_right
        if @direction == "W"
            @direction = "N"
        elsif @direction == "N"
            @direction = "E"
        elsif @direction == "E"
            @direction = "S"
        else @direction == "S"
            @direction = "W"
        end
    end
    # def set_of_instructions
    #     def initialize (instruction)


    #     end
    # end
    def do_instruction(x)
        case x
        when x = "L"
            then turn_left
        when x = "R"
            then turn_right
        when x = "M"
            then move_forward
        else
            puts "This is not a valid instruction"
        end
    end

    def to_s
        "I am at #{@x}, #{@y}, facing: #{@direction}"
    end

end

puts "What is the width and height of the plateau?"
width, height = gets.chomp.split(" ")
my_plateau = Plateau.new(width, height)
puts "How many rovers?"
n = gets.chomp.to_i
n.times do
    puts "Enter rover position"
    x, y, direction = gets.chomp.upcase.split("")
    rover = Rover.new(x, y, direction)
    puts rover
    puts "Enter rover instructions"
    instructions = gets.chomp.upcase.split("")
    instructions.each do |x|
        rover.do_instruction(x)
    end
    puts rover
end