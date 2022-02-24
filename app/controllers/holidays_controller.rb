class HolidaysController < ApplicationController
	def index
		@holiday = Holiday.all
	end
end
