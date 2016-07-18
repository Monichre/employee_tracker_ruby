class CreateEmployees < ActiveRecord::Migration
  def change
    create_table(:employees) do |t|
      t.column(:first_name, :string)
      t.column(:last_name, :string)
      t.column(:division_id, :int)
      t.column(:project_id, :int)
      t.timestamps()
    end
  end
end
