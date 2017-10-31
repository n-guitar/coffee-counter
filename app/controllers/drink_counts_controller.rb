class DrinkCountsController < ApplicationController
  def index
    @users = User.all
    @drinks = Drink.all
  end
  def create
  redirect_to :root
  end
end
