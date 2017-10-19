class TestJob < ApplicationJob
  queue_as :default

  def perform(*args)

    Rails.logger.debug "#{self.class.name}: ----- I'm performing my job with arguments: #{args.inspect}"

    TaskSchedule.all.each do |task|
		    if task.due_date < Time.now
		        Task.create!(name: task.name, due_date: task.due_date, completed: false)
		    end
		end

  end
end
