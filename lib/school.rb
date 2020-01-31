class School
  
  attr_accessor :name, :add_student, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    student_values = @roster.values.sort.each { |value| @roster[value] }
  end
end