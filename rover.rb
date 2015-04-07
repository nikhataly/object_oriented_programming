#module to_move #include common behaviour that can be shared across classes
#
#marsrover
#
class Plateau

    def self.run  #class methods always have self, instance methods never do
        my_plateau = Plateau.new
        my_plateau.user_input
    end

    attr_accessor :width, :height, :rover ##why????!

    def initialize(width, height, rover)
        @width = width
        @height = height
        @rover = rover
    end

    def user_input
        puts "What is the width and height of the plateau?"
        array_of_plateau = gets.chomp.split(" ")
        array_of_plateau[0] = width
        array_of_plateau[1] = height
        puts "How many rovers?"
        n = gets.chomp.to_i
        n.times do
            puts "Enter rover position"
            selection = [gets.chomp].split(" ")
            rover = Rover.new[selection[0], selection[1], selection[2]]
            puts "Enter rover instructions"
            new_instructions = gets.chomp
            rover.move(new_instructions)
        end
    end
end
#
#
# def main_menu
#         while true
#             print_main_menu
#             selection = gets.chomp.to_i
#             call_selection(selection)
#         end
#     end
#     R.each do |x|
#         Rover
#     end

# end
#
#
# Plateau
# gets.chomp
#
# Position
# gets.chomp
#
# Moving Instruction
#
# end
#
#
class Rover


    def initialize(init_x, init_y, init_direction)
        @x = init_x
        @y = init_y
        @direction = init_direction
    end



    def move_forward
        if @direction == "N"
            @y += 1
        elsif @direction == "E"
            @x += 1
        elsif @direction == "S"
            @y -= 1
        else @direction == "W"
            @y -= 1
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

    def move(instructions)
        instructions.split(" ").each |x| do
            case x
            when x = L
                then move_left
            when x = R
                then move_right
            when x = M
                then move_forward
            else
                puts "This is not a valid instruction"
            end
        end
    end

    def to_s
        "I am at #{@x}, #{@y}, facing: #{@direction}"
    end
end