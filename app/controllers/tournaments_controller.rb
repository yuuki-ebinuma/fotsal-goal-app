class TournamentsController < ApplicationController

  def index
    @tournament = Tournament.all
    
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(tournament_params)
    if @tournament.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @tournament = Tournament.find(params[:id])
  end

  def edit
  end

  def update
    
  end

  def destroy
    @tournament = Tournament.find(params[:id])
    @tournament.destroy
    redirect_to root_path
  end


  private

  def tournament_params
    params.require(:tournament).permit(:event_month_id,:event_date_id,:event_time_id,:entry_participation_id,:fee,:event_address,:event_description,:event_title).merge(operation_id: current_operation.id)
  end


end
