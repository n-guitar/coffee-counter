class UsersController < ApplicationController
  def index
    @user = User.new
    @users = User.all.order(:name)
  end
  def new
  end
  def create

    @user = User.create(user_params)
    @user.save
    redirect_to :users
  end
  def update
    @user = User.find(params[:id])
    @user.update(disabled: params[:disabled])
    @user.save
    redirect_to :users
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to :users
  end
  private
  def user_params
    params.require(:user).permit(:name, :mail, :disabled)
  end
end
