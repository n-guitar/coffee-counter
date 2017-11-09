class DrinkCountsController < ApplicationController
  def index
    @users = User.all
    @drinks = Drink.all
    @drinkcounts = DrinkCount.all#.where(updated_at: Time.zone.today.beginning_of_day..Time.zone.today.end_of_day)
    @drinkcount = DrinkCount.new
 
  end
  def create
    
    user = User.find_by(:name => params[:commit])
    @drinkcount = DrinkCount.create(user_id: user.id, drink_id: params[:drink_id], cnt: "true")
    @drinkcount.save
  redirect_to :root
end
private
  def drink_count_params
      params.require(:drink_count).permit(:user_id, :drink_id, :cnt)
  end
end
