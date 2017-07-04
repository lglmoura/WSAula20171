Rails.application.routes.draw do
  resources :disciplinas
  #get 'home/index'
  root to: 'home#index'

  resources :professores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
