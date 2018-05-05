Rails.application.routes.draw do
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", passwords: "users/passwords", registrations: "users/registrations"}

  get '/user_projects/:id', to: "my_projects#view_all",as:"user_projects"
  get '/user_projects', to: "my_projects#index"


  resources :projects
  get '/', to: "home#index", as:'home'
  get 'login', to: "session#login"
  post 'login', to: "session#create"
  get '/profile/:id', to: "profile#show", as: "user_profile"
  get '/edit_profile/:id', to: "profile#edit"
  patch '/edit_profile', to: "profile#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html





  get '/admin/get_users', to: "admin#get_users", as: 'admin_get_users'
  get '/admin', to: "admin#index"


end
