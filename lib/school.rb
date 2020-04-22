require 'pry'

class School
    #binding.pry
    def initialize(name)
        #binding.pry
        @name = name
        @roster = {}
    end
    
    
    attr_reader :name
    attr_accessor :roster
    # def roster
    #     @roster
    # end
    
    def add_student(student_name, grade)
        #binding.pry
        if roster[grade]
            roster[grade] << student_name
        else
        roster[grade] = [student_name]
        end
    end
#------------------------------------------------#
    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_roster = roster
        sorted_roster.each do |grade, students|
            students.sort!
        end
    end

    #binding.pry
end