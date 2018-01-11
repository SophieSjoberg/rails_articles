Rails.application.routes.draw do
  # get 'landing/index'
  post 'comments/create'
  get 'articles/new'
  get 'articles/create'

  root controller: :landing, action: :index
  resources :articles do
      resources :comments

  end
end
