class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @events = Event.all.where(user_id: current_user.id)
  end

  def create
    @user = User.new(params[:user])
  end
end
