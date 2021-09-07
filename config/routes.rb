Rails.application.routes.draw do
  

 

  get 'awusers/index'

  get 'applications/index'

  get 'oranks/index'

  get 'supervisors/index'

  get 'supervisors/new'

    get 'awusers/new'

  get 'custations/index'

  get 'cusections/new'

  get 'cusections/index'

  get 'supnames/new'

  get 'awusers/new'

   
  get 'users' => 'users#index'
  get 'asyfxn/new'

   get 'asyfxn/create'

   get 'function' => 'asyfxns#new'

    get 'section' => 'cusections#new'

     get 'station' => 'custations#new'

  get 'account_type' => 'acctypes#new'

   get 'supervisor' => 'supnames#new'

   get 'supervisor_code' => 'supervisors#new'

   get 'ranks' => 'oranks#new'

   get 'applications' => 'applications#index'

    get 'asyworlduser' => 'awusers#new'

  get 'acctype/create'

  get 'acctype/new'

  #get "awusers/username" => 'awusers#username', as: "username" 
  ##resources :awusers do
  ##  collection { post :import }
  #end

    get "users/username" => 'users#username', as: "username" 
  resources :awusers do
    collection { post :import }
  end

  get 'awusers' => 'awusers#index'

  get 'awuser/new'

  resources :maintenances
  get 'reports/index'

  get 'search_user' => 'users#index'

  

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
  resources :reports
  resources :acctypes
  resources :cusections
  resources :custations
  resources :oranks
  resources :supervisors
  resources :supnames
  resources :awusers



  get '/reports/clear', to: 'reports#clear', as: 'clear'

  get 'requisitions' => 'toners#alltoners'
  root 'orders#deployed'
  get 'deployed_section' => 'orders#deployed_by_section'
  get 'professionaldevelopment' => 'pages#index'
  get 'reports' => 'reports#index'
  get 'inventory' => 'orders#deployed'
  # get 'tonereq' => 'items#new'

  get 'allitem' => 'items#allitem'

   get 'corozal_cargo' => 'orders#corozal_cargo'



  get 'toners' => 'toners#index'

  get 'forms' => 'toners#forms'

  get 'station_info' => 'orders#station'

  get 'serviced_items' => 'orders#old'

  get 'renew/:id' => 'orders#renew'
  get 'return/:id' => 'orders#disable'
  
  get "/IT_Support" => 'maintenances#new'
  
 get "/sign_up" => 'devise/registrations#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
