class DeskController < ApplicationController
  def create
  	# @note = Note.create! job_params
  	# render json: new_note and return
  	render plain: params[:note].inspect
  end
  def index
  	@notes = Note.all
  end

  private
   	def job_params
  		params.require(:title).permit(:description, :due)
  	end
end
