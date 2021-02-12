Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #Home
  get '/bienvenida', to: "home#index"
  #Crear Article
  get "articles/new", to: "articles#new"
  #Mostrar
  get "articles/:id", to: "articles#show"
  #Editar
  get "articles/:id/edit", to: "articles#edit"

  patch "articles/:id", to: "articles#update", as: :article
  #  
  post "articles", to: "articles#create"



end
