Lukeransom::Application.routes.draw do
  resources :users
  resources :projects

  root 'pages#about_me'

  get '/sign_in', to: 'pages#sign_in'

  post '/sign_in', to: 'sessions#create'

  delete '/sign_out', to: 'sessions#destroy'

end
