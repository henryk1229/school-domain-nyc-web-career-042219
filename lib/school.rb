# code here!
class School
   attr_reader :name, :roster

   def initialize(name)
     @name = name
     @roster = {}
   end

   def add_student(student_name, grade)

     if roster[grade]
       roster[grade] << student_name
     else
       roster[grade] = []
       roster[grade] << student_name
     end
   end

   def grade(school_grade)
     roster[school_grade]
   end

   def sort
     roster.each do |grade, array|
       array.sort!
     end
   end







end
