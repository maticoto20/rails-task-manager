Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # CREATE
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'

  # READ
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :task

  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  # DESTROY
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
end
