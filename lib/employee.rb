class Employee < ActiveRecord::Base
  belongs_to(:division)
  belongs_to(:project)

  define_singleton_method(:searchEmployees) do |first_name, last_name|
    found_employee = nil
    Employee.all.each do |employee|
      if employee.last_name == last_name && employee.first_name == first_name
        found_employee = employee
      end
    end
      found_employee
  end
end
