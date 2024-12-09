Rails.application.routes.draw do
  get 'calendars/index'
  root to: 'calendars#index'
  resources :calendars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
