Rails.application.routes.draw do
  root 'home#index'
  resources :salas
  resources :ministras
  resources :secaos
  resources :periodos
  resources :mentorias
  resources :instrutors
  resources :alunos
  resources :pre_requisitos
  resources :cursos
  resources :departamentos
  resources :predios
  resources :universidades

  get "up" => "rails/health#show", as: :rails_health_check

end
