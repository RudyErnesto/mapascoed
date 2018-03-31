Rails.application.routes.draw do
  resources :welcomes
  resources :organizacions
  resources :recurso_eventos
  resources :recursos
  resources :funcionarios
  resources :locations
  root "locations#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
