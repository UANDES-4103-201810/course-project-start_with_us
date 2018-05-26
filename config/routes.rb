Rails.application.routes.draw do
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", passwords: "users/passwords", registrations: "users/registrations"}

  resources :categories

  get '/my_projects', to: "my_projects#view_all", as:"my_projects"

  get '/my_wishlist', to: "my_projects#my_wishlist", as:"my_wishlist"
  get '/my_foundings', to: "my_projects#my_foundings", as:"my_foundings"

  get '/admin', to: "admin#index", as:"admin"
  resources :projects
  get '/', to: "home#index", as:'home'
  get 'login', to: "session#login"
  post 'login', to: "session#create"
  get '/profile/:id', to: "profile#show", as: "user_profile"
  get '/edit_profile/:id', to: "profile#edit"
  patch '/edit_profile', to: "profile#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/payment/promises/:id', to: "payments#promises", as: "pay_promise"
  post '/payment/pay', to: "payment#pay"

  get '/payments/fund/:id', to: "payments#fund"

  get '/admin/get_users', to: "admin#get_users", as: 'admin_get_users'
  get '/admin', to: "admin#index"

  post '/wishlist/project/', to: "my_projects#add_to_wishlist"
  delete '/wishlist/project/', to: "my_projects#remove_from_wishlist"
  post '/projects/status/:id', to: "projects#status"
  get '/projects/categories/search', to: "categories#search_by_category"

end
