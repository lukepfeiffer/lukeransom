Lukeransom::Application.routes.draw do
  root 'pages#home'

  get '/about_me', to: 'pages#about_me'
  get '/projects', to: 'pages#projects'
end
