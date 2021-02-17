Rails.application.routes.draw do
  resources :categories
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :articles do
    get "user/:user_id", to: "articles#from_author", on: :collection
  end
  # Esto despliega todas las siguiente rutas
    #get '/bienvenida', to: "home#index"
    #get "articles", to: "articles#index"
    #get "articles/new", to: "articles#new"
    #get "articles/:id", to: "articles#show"
    #get "articles/:id/edit", to: "articles#edit"
    #patch "articles/:id", to: "articles#update", as: :article
    #delete "articles/:id", to: "articles#destroy"
    #post "articles", to: "articles#create"

     get "perfil", to: "users#edit"

      resources :users, only: [:update]



  root to:"home#index"

  

  



end
