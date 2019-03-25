Rails.application.routes.draw do
  devise_for :users
  #get 'page/home'
  get 'page/parents' => 'page#parents'
  get 'page/providers' => 'page#providers'
  get 'page/contacts' => 'page#contacts'
  get 'page/profile' => 'page#profile'
  get 'page/disorders' => 'page#disorders'
  get 'page/resources' => 'page#resources'

  resources :providers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post and get methods should be defined separately
  root 'page#home'
end
