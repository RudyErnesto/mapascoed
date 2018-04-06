Rails.application.routes.draw do
  devise_for :users
  resources :welcomes
  resources :organizacions
  resources :recurso_eventos
  resources :recursos
  resources :funcionarios
  resources :locations
  root "welcomes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
