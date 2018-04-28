Rails.application.routes.draw do
  get "welcome/eliminar" => "welcome#eliminar"
  get "welcome/habilitarlo" => "welcome#habilitarlo"
  get "welcome/desactivarlo" => "welcome#desactivarlo"
  resources :institucions
  resources :hojaderecursos
  devise_for :users
  resources :welcomes
  resources :organizacions
  resources :recurso_eventos
  resources :recursos
  resources :funcionarios
  resources :locations
  root "welcomes#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
