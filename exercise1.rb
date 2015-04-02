class Person
    def initialize(name)
        @name = name
    end

    def greeting
        puts "Hi my name is #{@name}"
    end
end

class Student < Person


    def learn
        puts "I get it!"
    end
end

class Instructor < Person

    def teach
        puts "Everything in Ruby is an Object"
    end
end

new_student = Student.new("Cristina")
new_student.greeting
new_student.learn

new_teacher = Instructor.new("Chris")
new_teacher.greeting
new_teacher.teach

# new_student.teach
# new_teacher.learn
# The above two lines won't work because the variables are assigned to a class, while we are calling on a method that is defined in a different class!

