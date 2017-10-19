class Task < ApplicationRecord
  belongs_to :user

  def complete
  	self.completed ? "YES" : "NO"
  end
end
