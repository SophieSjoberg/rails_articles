Rails.application.routes.draw do
  get 'article/show'
  root controller: :landing, action: :index
  resources :articles
end
