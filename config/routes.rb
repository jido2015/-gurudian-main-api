Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
        post "/sign-up", to: "auth#sign_up"
        post "/login", to: "auth#login"
      end
end
