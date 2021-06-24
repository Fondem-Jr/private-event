class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @events = Event.all
  end

  def create
    @user = User.new(params[:user])
  end
end
