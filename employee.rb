require_relative 'bonus'

class Employee
    attr_reader :name, :salary, :boss, :title
    include Bonus 

    def initialize(name, salary, boss, title)
        @name = name
        @salary = salary
        @boss = boss
        @title = title
    end

    def bonus(multi)
        self.salary * multi
    end


end