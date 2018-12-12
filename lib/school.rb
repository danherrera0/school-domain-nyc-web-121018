
# code here!
require 'pry'
class School
# attr_accessor :name, :roster
def initialize(name)
  @name = name
  @roster = {}
end

def roster
  @roster
end

def add_student(student_name,grade)
  if roster[grade]
    roster[grade] << student_name
  else
    roster[grade]=[]
    roster[grade] << student_name
  end
end

def grade(grade_num)
  roster[grade_num]
  end

  def sort
      sorted_students= {}
      roster.each do |grade, students|
        sorted_students[grade] = students.sort
      end
      sorted_students
  end

end
