Rails.application.routes.draw do
  get 'signup', to: 'signup#index'
  get '/login', to: 'login#index'
  get '/', to: 'login#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
