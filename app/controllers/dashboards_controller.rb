class DashboardsController < ApplicationController
  def index
    @users = User.where(disabled: false).order(:name)
    @drinks = Drink.all
    @drinkcounts = DrinkCount.where(updated_at: Time.zone.today.beginning_of_day..Time.zone.today.end_of_day)
    @drinkranks = @drinkcounts.group(:drink_id).order('count_all desc').count

    gon.drinkranks_name = @drinkranks.keys.map{|m| Drink.find(m).menu}
    gon.drinkranks_count = @drinkranks.values

  end
end
