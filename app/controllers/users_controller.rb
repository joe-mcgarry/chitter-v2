class UsersController < ApplicationController
  def index
  end

  def new
    
  end

  def create
    @user = User.new(params[:first_name][:last_name][:handle][:email][:password])
    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end
end
