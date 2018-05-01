Rails.application.routes.draw do
  devise_for :users, path: 'users', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' },
             controllers: {sign_up: 'users/registrations'}
  resources :projects
  get '/', to: "home#index"
  get 'new_user', to: "user#new_user"
  post '/new_user', to: 'user#create'
  get 'login', to: "session#login"
  post 'login', to: "session#create"
  get '/profile/:id', to: "profile#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html






  get '/admin', to: "admin#index"
end
