Rails.application.routes.draw do
  # resources :cats

  # CREATE
  get '/cats/new', to: 'cats#new'
  post '/cats', to: 'cats#create'

  # READ
  get '/cats', to: 'cats#index'
  get '/cats/:id', to: 'cats#show'

  # UPDATE
  get '/cats/:id/edit', to: 'cats#edit', as: :edit_cat
  patch '/cats/:id', to: 'cats#update', as: :cat

  # DELETE
  delete '/cats/:id', to: 'cats#destroy', as: :delete_cat
end
