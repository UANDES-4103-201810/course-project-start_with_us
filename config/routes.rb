Rails.application.routes.draw do
  resources :projects
  get '/', to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html






  get '/admin', to: "admin#index"
end
