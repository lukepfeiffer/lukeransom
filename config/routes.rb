Lukeransom::Application.routes.draw do
  resources :users

  root 'pages#home'

  get '/about_me', to: 'pages#about_me'
  get '/projects', to: 'pages#projects'
  get '/sign_in', to: 'pages#sign_in'
end
