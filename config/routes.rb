Rails.application.routes.draw do

  get 'home/ping'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
        post "/sign-up", to: "auth#sign_up"
        post "/login", to: "auth#login"
      end
end
