require ('spec_helper')

describe(Division) do
  describe('#employees') do
    it('tells what employees are in a division') do
      test_division = Division.create({:name => "Human Resources"})
      test_name1 = Employee.create({:first_name => "Jane", :last_name => "Doe", :division_id => test_division.id(), :project_id => nil})
      test_name2 = Employee.create({:first_name => "Bobby", :last_name => "McGee", :division_id => test_division.id(), :project_id => nil})
    end
  end
end
