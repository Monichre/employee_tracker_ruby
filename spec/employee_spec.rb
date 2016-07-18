describe(Employee) do
  describe('#division') do
    it("tells which dvision an employee is in") do
      test_division = Division.create({:name => 'Human Resources'})
      test_employee = Employee.create({:first_name => "Jane", :last_name => "Doe", :division_id => test_division.id(), :project_id => nil})
    end
  end
end
