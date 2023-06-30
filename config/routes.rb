Rails.application.routes.draw do
  get 'users/new'
  get '/users/register', to:"users#register"
  get 'sessions/new'
  get 'articles/form'

  get 'articles/new_post' ,to: "articles#new_post"  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
   post '/create_post' ,to: 'articles#create_post'
   post '/create_user' ,to: 'users#create_user'
   post '/login_user',to: 'users#login_user'


   delete 'logout',to: 'users#destroy'
end
