Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'login#index'
  # get 'dashboard' => 'dashboard#index'
  get 'home' => 'tweets#show'

  resource :tweets
  devise_for :users, :controllers => { registrations: 'registrations' }
  # devise_for :users
end
