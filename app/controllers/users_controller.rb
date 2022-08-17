class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    #update this section to specify which param goes to which field
    @user = User.new(params[:first_name][:last_name][:handle][:email][:password])
    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end
end
