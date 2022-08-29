class UsersController < ApplicationController
  def show
    # @user = find_by(booking_link: params[:booking_link])
    @user = User.find_by(booking_link: params[:booking_link])
    @user = User.find_by(name: params[:name]) if params[:name]
  
  end
end
