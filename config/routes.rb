Rails.application.routes.draw do
  root "customers#index"
  get "/customers/missing_email", to: "customers#missing_email"
  get "/customers/alphabetized", to: "customers#alphabetized"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "up" => "rails/health#show", as: :rails_health_check
end
