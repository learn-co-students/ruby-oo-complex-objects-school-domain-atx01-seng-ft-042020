class School
    require 'pry'
    attr_reader :school, :roster


    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, student_name|
           @roster[grade] = @roster[grade].sort
        end
    end

end