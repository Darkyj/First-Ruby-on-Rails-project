class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to @user, notice: "User was successfully created."
  	else
  		render :new
  	end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id]).update(user_params)
    redirect_to user_path    
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  private
  def user_params
  	params.require(:user).permit(:first_name,:last_name,:password,:email_address)
  end
end
