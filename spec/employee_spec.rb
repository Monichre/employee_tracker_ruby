describe(Employee) do
  describe('#division') do
    it("tells which division an employee is in") do
      test_division = Division.create({:name => 'Human Resources'})
      test_employee = Employee.create({:first_name => "Jane", :last_name => "Doe", :division_id => test_division.id(), :project_id => nil})
      expect(test_employee.division()).to(eq(test_division))
    end
  end

  describe('.searchEmployees') do
    it('returns the employee object from search by name')do
    test_employee = Employee.create({:first_name => "Jane", :last_name => "Doe", :division_id => nil, :project_id => nil})
    test_employee2 = Employee.create({:first_name => "James", :last_name => "Doe", :division_id => nil, :project_id => nil})
    expect(Employee.searchEmployees('Jane', 'Doe')).to(eq(test_employee))

    end
  end
end
