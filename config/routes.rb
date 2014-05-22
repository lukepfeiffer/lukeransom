Lukeransom::Application.routes.draw do
  resources :users
  resources :projects

  root 'pages#home'

  get '/about_me', to: 'pages#about_me'
  get '/sign_in', to: 'pages#sign_in'

  post '/sign_in', to: 'sessions#create'
end
