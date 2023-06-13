require_relative 'employee'


class Manager < Employee
    attr_accessor :employees
    include Bonus

    def initialize(name, salary, boss, title)
        super
        @employees = []
    end

    def add_employees(*person)
        self.employees += person
    end

    def find_employees_salary
        salary = []
        employees.each do |employee|
            salary << employee.salary
        end
        salary
    end

    def bonus(multi)
        (self.find_employees_salary.flatten.sum) * multi
    end
end

elilta = Employee.new('Eli', 10000, 'cat', 'employee')
ashley = Manager.new('Ash', 2008, 'dog', 'manager')
ned = Manager.new('ned', 1000000, 'Founder', nil)
darren = Manager.new('Darren', 78000, 'TA manager', 'ned')
shawna = Employee.new('Shawna', 1200, 'TA', 'Darren')
david = Employee.new('David', 10000, 'TA', 'Darren')
ned.add_employees(elilta, ashley, darren, shawna, david)
# p ashley.salary
# p ashley.find_employees_salary
p ned.find_employees_salary()
p ned.bonus(5)

