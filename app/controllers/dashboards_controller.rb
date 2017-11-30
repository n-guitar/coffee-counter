class DashboardsController < ApplicationController
  def index
    @users = User.where(disabled: false).order(:name)
    @drinks = Drink.all
    @drinkcounts = DrinkCount.where(updated_at: (Time.zone.today.beginning_of_day - 30.day)..Time.zone.today.end_of_day)
    @drinkranks = @drinkcounts.group(:drink_id).order('count_all desc').count
    @userdrinkcounts = @drinkcounts.group(:user_id).order('count_all desc').count

    keys = @drinkranks.keys.map{|m| Drink.find(m).menu}
    values = @drinkranks.values
    ary = [keys,values].transpose
    gon.drinkranks_name = keys
    gon.drinkranks_count = values
    gon.drinkranks = Hash[*ary.flatten]

  end
end
