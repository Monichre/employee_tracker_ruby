class CreateProjects < ActiveRecord::Migration
  def change
    create_table(:projects) do |t|
      t.column(:name, :string)
      t.column(:due_date, :datetime)
      t.column(:completed, :boolean)

      t.timestamps()
    end
  end
end
