class LeavesController < ApplicationController
	#byebug
	authorize_resource :class => false	

	def index
		@leaves = Leave.all
	end
	
	def new
		@leave = Leave.new
	end

  def create
		@leave = Leave.new(
		date:params[:leave][:date],
		reason:params[:leave][:reason],
		user_id:params[:leave][:user_id],
		applicant_name:params[:leave][:applicant_name])
			if @leave.save
				redirect_to root_path
			else
				render:new
			end
  end

  def show
  	@leave = Leave.find(params[:id])
  end

  def edit
  	@leave = Leave.find(params[:id])
  end

  def update
  	@leave = Leave.find(params[:id])
	  	if @leave.update(
	  		status:params[:status])
	  	  redirect_to leafe_path
	  	else
	  		render:edit 
	  	end
  end
end

