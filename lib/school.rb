# code here!
class School
    attr_reader :name, :roster 

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else
            @roster[grade] = [student_name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        #is able to sort the students
        roster_copy = @roster
        roster_copy.each do |grade, students|
            students.sort!
        end
        roster_copy
    end



end
