Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "drink_counts#index"
  resources "drink_counts" , only: [:new, :create, :edit, :update, :destroy]
  resources "users"
  resources "dashboards", only: [:index]
  get '/drink_counts/index2', to: "drink_counts#index2"

end
