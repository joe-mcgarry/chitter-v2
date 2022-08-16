Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "peeps#index"

  get "/peeps", to: "peeps#index"
end
