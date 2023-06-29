Rails.application.routes.draw do
  get 'users/new'
  get 'sessions/new'
  get 'articles/form'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'articles/new_post' ,to: "articles#new_post"
   post '/create_post' ,to: 'articles#create_post'
   post '/create_user' ,to: 'users#create_user'
end
