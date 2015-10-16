Rails.application.routes.draw do

  # Root page
  root 'home#index'

  # Blog
  #TODO: finish these two routing URLs
  get 'articles' => 'articles#index'
  get 'articles/new' => 'articles#new'
  get 'articles/:id' => 'articles#show'

end
