class UsersController < ApplicationController

  def index
    @users = ::User.all
  end

  def show
    @user = ::User.find(params[:id])
  end

  def new
    @user = ::User.new(is_admin: false)
  end

  def create
    @user = ::User.new(user_params)
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    if @user.valid?
      @user.save
      redirect_to users_url(@user)
    else
      render 'edit'
    end
  end

  def edit
    @user = ::User.find(params[:id])
  end

  def update
    @user = ::User.find(params[:id])
    if @user.valid?
      @user.update_attributes(user_params)
      redirect_to users_url(@user)
    else
      render 'edit'
    end
  end

  def destroy

  end

  private

  def user_params
    params.required(:user)
      .permit(:name,
              :email,
              :is_admin)
  end
end
