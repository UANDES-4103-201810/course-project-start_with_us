Rails.application.routes.draw do
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", passwords: "users/passwords", registrations: "users/registrations"}
  resources :projects
  get '/', to: "home#index"
  get 'login', to: "session#login"
  post 'login', to: "session#create"
  get '/profile', to: "profile#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/admin', to: "admin#index"
end
