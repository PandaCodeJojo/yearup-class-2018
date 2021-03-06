class Classroom
  attr_accessor :name
  attr_accessor :students

  def initialize(name)
    @name = name
    @students = {}
  end

  def addStudent(student)
    puts @students.inspect
    if @students.key?(student.name)
      raise "Sorry, #{student} is already in here."
    end
    @students[student.name] = student
  end

  def roster
    puts @name + " roster:"
    @students.each do |key, value|
      puts "#{value.name}: #{value.age}"
    end
  end

end
