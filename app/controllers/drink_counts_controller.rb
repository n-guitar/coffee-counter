class DrinkCountsController < ApplicationController
  def index
    @users = User.all
    @drinks = Drink.all
    @drinkcounts = DrinkCount.where(updated_at: Time.zone.today.beginning_of_day..Time.zone.today.end_of_day)
  end
  def create
    

    @drinkcount = DrinkCount.create(user_id: params[:user_id], drink_id: params[:id], cnt: "true")
    @drinkcount.save
  redirect_to :root
end
private
  def drink_count_params
      params.require(:drink_count).permit(:user_id, :drink_id, :cnt, :id)
  end
end
