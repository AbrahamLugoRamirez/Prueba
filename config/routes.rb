Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'signup', to: 'signup#index'
  get '/', to: 'login#index'
  get '/login', to: 'login#index'
  get '/signup', to: 'user#new'
  post 'user/create', to:'user#create'

  # resource :user
end
