require("spec_helper")

describe(Project) do

  describe(".not_completed") do
    it("returns the not done tasks") do
      not_completed_project1 = Project.create({:name => "gotta do it", :completed => false})
      not_completed_project2 = Project.create({:name => "gotta do it too", :completed => false})
      not_completed_projects = [not_completed_project1, not_completed_project2]
      done_project = Project.create({:name => "done task", :completed => true})
      expect(Project.not_completed()).to(eq(not_completed_projects))
    end
  end
end
