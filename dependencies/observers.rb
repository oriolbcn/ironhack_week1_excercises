class Payroll
 def update( changed_employee )
   puts("Cut a new check for #{changed_employee.name}!")
   puts("His salary is now #{changed_employee.salary}!")
 end
end

class HHRRDept
  def update( changed_employee )
     puts("You are spending too much for #{changed_employee.name}!!!")
   end
end

class Employee
 attr_reader :name, :title
 attr_reader :salary

 def initialize( name, title, salary) 
   @name = name
   @title = title
   @salary = salary
   @observers = []
 end
 
 def add_observer(observer)
   @observers << observer
 end

 def salary=(new_salary) 
    @salary = new_salary 
    @observers.each do |observer|
      observer.update(self)
    end
 end
end

payroll = Payroll.new
hhrr_dept = HHRRDept.new
fred = Employee.new('Fred', 'Crane Operator', 30000)
fred.add_observer payroll
fred.add_observer hhrr_dept
fred.salary = 35000