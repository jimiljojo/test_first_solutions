class Timer
	attr_accessor :seconds, :time_string, :minutes, :hours
	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
	end

	def time_string
		if @seconds>60
			@minutes = @seconds/60
			@seconds = @seconds % 60
			if minutes>60
				@hours = @minutes/60
				@minutes = @minutes % 60
			end
		end
		time = [@hours, @minutes, @seconds]
		time.map! { |str|  
			if str < 10
				str = sprintf '%02d', str
			else
				str
			end
		}
		@time_string = time[0].to_s+':'+time[1].to_s+':'+time[2].to_s
	end

end