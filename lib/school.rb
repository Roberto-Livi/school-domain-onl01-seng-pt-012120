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
    self.roster.each do |grade, students|
      students.sort!
    end
  end
end