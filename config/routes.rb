Rails.application.routes.draw do
  devise_for :users
  resources :projects
  get '/', to: "home#index"
  get 'new_user', to: "user#new_user"
  post '/new_user', to: 'user#create'
  get 'login', to: "session#login"
  post 'login', to: "session#create"
  get '/profile/:id', to: "profile#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html





  get '/admin/get_users', to: "admin#get_users", as: 'admin_get_users'
  get '/admin', to: "admin#index"

end
