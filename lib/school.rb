# code here!
class School 
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] != nil ? (roster[grade].append(name)) : (roster[grade] = [name])
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        res = {}
        roster.sort.each {|e|
            res[e[0]] = e[1].sort
        }
        res
    end
end