class TournamentsController < ApplicationController
  before_action :set_q, only: [:index, :search]
  before_action :set_tournament, only: [:show,:edit,:update,:destroy]

  def index
    @tournament = Tournament.all
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(tournament_params)
    if @tournament.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @tournament.update(tournament_params)
      redirect_to tournament_path(@tournament.id)
    else
      render :edit
    end
  end

  def destroy
    @tournament.destroy
    redirect_to root_path
  end

  def search
    @results = q.result
  end


  private

  def tournament_params
    params.require(:tournament).permit(:event_month_id,:event_date_id,:event_time_id,:entry_participation_id,:fee,:event_address,:event_description,:event_title).merge(operation_id: current_operation.id)
  end

  def set_q
    @q = Tournament.ransack(params[:q])
  end

  def set_tournament
    @tournament = Tournament.find(params[:id])
  end


end
