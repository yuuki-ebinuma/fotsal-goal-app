class EntriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: [:index,:create]



  def index
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
  end

  def new
    @entry = Entry.new
  end


  

  private

  def entry_params
    params.require(:entry).permit(:team_name,:team_captain,:phone).merge(user_id:current_user.id,tournament_id:@tournament.id)
  end

  def set_product
    @tournament = Tournament.find(params[:tournament_id])
  end
end
