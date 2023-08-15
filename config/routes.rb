Rails.application.routes.draw do
  resources :donors
  resources :donations
  resources :charities
  resources :beneficiaries
  resources :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/login', to: 'sessions#new'      # To display the login form
  post '/login', to: 'sessions#create'  # To handle the form submission
end
