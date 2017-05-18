# code here!
require "pry"

class School
  attr_accessor :roster, :student_name, :school_name
  def initialize(name)
    @name = name
    @roster = {}
  end
# binding.pry
  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end
  
  def grade(student_grade)
   roster[student_grade]
 end

  def sort
   sort_students = {}
   roster.each do |grade, students|
     sort_students[grade] = students.sort
   end
   sort_students
 end

end
