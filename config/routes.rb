Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home', to: 'tasks#index'
  # 1. new
  get '/tasks/new', to: 'tasks#new'

  # 2. create
  post '/tasks', to: 'tasks#create'

  # 3. index
  get '/tasks', to: 'tasks#index'

  # 4 .show
  get '/tasks/:id', to: 'tasks#show', as: 'task'

  # 5. edit
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit'

  # 6. update
  patch '/tasks/:id', to: 'tasks#update'

  # 7. destroy
  delete '/tasks/:id', to: 'tasks#destroy'
end
