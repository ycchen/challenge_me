module TasksHelper

	def format_time(time, timezone)
	  time.in_time_zone(timezone)
	end
end
