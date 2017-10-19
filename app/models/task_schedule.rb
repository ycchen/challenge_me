class TaskSchedule < ApplicationRecord
  belongs_to :user
  scope :tasks_due_today, -> { where("DATE(due_date) = ?", Date.today) } 
  
end
