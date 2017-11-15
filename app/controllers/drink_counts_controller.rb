class DrinkCountsController < ApplicationController
  def index
    @users = User.all
    @drinks = Drink.all
    @drinkcounts = DrinkCount.where(updated_at: Time.zone.today.beginning_of_day..Time.zone.today.end_of_day)
    @drinkcount = DrinkCount.new
 
  end
  
  def create   
    user = User.find_by(:name => params[:commit])
    @drinkcount = DrinkCount.create(user_id: user.id, cnt: true, drink_id: params[:drink_count][:drink_id] )
    @drinkcount.save
  redirect_to :root
  end

end
