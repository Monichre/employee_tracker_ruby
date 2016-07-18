class Project < ActiveRecord::Base
  has_many(:employees)

  scope(:not_completed, -> do
    where({:completed =>false})
  end)
end
