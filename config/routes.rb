Rails.application.routes.draw do
  resources :locations
  resources :institucions
  resources :hojaderecursos
  devise_for :users
  resources :welcomes
  resources :organizacions
  resources :recursos
  resources :funcionarios
  resources :recurso_eventos

  get "welcomes/index/eliminar" => "welcomes#eliminar"
  get "welcomes/index/habilitarlo" => "welcomes#habilitarlo"
  get "welcomes/index/desactivarlo" => "welcomes#desactivarlo"
  root "welcomes#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
