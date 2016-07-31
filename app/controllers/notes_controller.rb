class NotesController < ApplicationController
	def create
  		@note = Note.new(note_params)
  		@note.save
  		redirect_to root_path
  	end

	def destroy
  		@note = Note.find(params[:id])
  		@note.destroy
  		redirect_to root_path
	end

  	private
  		def note_params
    		params.require(:note).permit(:title, :description, :due)
  		end
end
