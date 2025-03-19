Rails.application.routes.draw do
  resources :posts
  resources :ruby_symbols
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :random_symbols
end
