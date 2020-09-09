Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'books/bestsellers', :to => 'books#best_sellers'
  resources :books
  root 'books#index'

end
