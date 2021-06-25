class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @all_events = event.all
    @events = Event.where(user_id: current_user.id)
    @past_events = @events.previous_events
    @upcoming_events = @events.upcoming_events
  end

  def create
    @user = User.new(params[:user])
  end
end
