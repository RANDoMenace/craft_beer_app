class UsersController < ApplicationController
before_action :authenticate, only: [:edit, :update, :show, :destroy]

  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to current_user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end


  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :pic_url)
    end

  end


