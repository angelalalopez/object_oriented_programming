class Person

  def initialize(name)
    @name = name
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

  def greeting
    puts "Hi, my name is #{@name}."
  end
end

chris = Person.new("Chris")
chris = Instructor.new
chris.teach
chris. greeting

# cristina = Student.new("Cristina")
# cristina.greeting

