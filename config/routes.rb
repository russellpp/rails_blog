Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: redirect('/home')
  get '/home' => 'articles#home'
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new', as: 'new_article'
  get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  get '/articles/:id' => 'articles#show', as: 'article'
  post '/articles/' => 'articles#create'
  patch '/articles/:id' => 'articles#update'
  delete '/articles/:id' => 'articles#destroy'


  # Defines the root path route ("/")
  # root "articles#index"
end
