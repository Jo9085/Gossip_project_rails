Rails.application.routes.draw do
  get 'welcome_user/show'
  get '/home', to: 'static_pages#home'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  get '/gossips/:id', to: 'static_pages#gossip'
  get '/author/:id', to: 'static_pages#author'


  get '/welcome/:user', to: "welcome_user#show"

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
