class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}."
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

# 6
chris = Instructor.new("Chris")
chris.greeting

# 7
cristina = Student.new("Cristina")
cristina.greeting

# 8
chris.teach
cristina.learn

# Call teach method on your student instance
cristina.teach

# What happens? Why doesn't that work?
# When I do this, it creates a method error because there is no method
# within the student class called teach.