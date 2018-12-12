
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
  binding.pry
  roster.select {|name, grades| grades == grade_num}
  end
end

def sort
  students_in_grade.sort
end

end
