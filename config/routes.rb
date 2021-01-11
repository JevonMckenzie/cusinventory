Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #devise_scope :user do
    #get "/sign_up" => 'devise/registrations#new', as: "new_user_registration" # custom path to sign_up/registration
    #get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
 # get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  #end
  devise_for :users, controllers: { registrations: "users/registrations" }
  #devise_for :users
  resources :orders
  resources :members
  resources :users
  resources :items

  root 'orders#index'
  get 'renew/:id' => 'orders#renew'
  get 'return/:id' => 'orders#disable'
  get 'past_orders' => 'orders#old'
 #get "/sign_up" => 'devise/registrations#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
