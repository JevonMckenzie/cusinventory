Rails.application.routes.draw do
  

  resources :toners
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


  root 'pages#index'
  get 'home' => 'pages#index'
  get 'inventory' => 'orders#deployed'

  get 'allitem' => 'items#allitem'

  get 'toners' => 'toners#index'

  get 'forms' => 'toners#forms'

  get 'station_info' => 'orders#station'

  get 'serviced_items' => 'orders#old'

  get 'renew/:id' => 'orders#renew'
  get 'return/:id' => 'orders#disable'
  
  
  
 #get "/sign_up" => 'devise/registrations#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
