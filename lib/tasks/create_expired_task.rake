namespace :create_expired_task do

	desc 'create incompleted task in Tasks table based on expired TaskSchedule task'
	# RAILS_ENV=development bundle exec rake create_expired_task:create_incompleted_tasks
	task :create_incompleted_tasks do
	  TaskSchedule.all.each do |task|
		    if task.due_date < Time.now
		        Task.create!(user_id: task.user_id, name: task.name, due_date: task.due_date, completed: false)
		    end
		end
	end
	
end
