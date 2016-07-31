class DeskController < ApplicationController
  def index
  	@notes = Note.all
  end
end
