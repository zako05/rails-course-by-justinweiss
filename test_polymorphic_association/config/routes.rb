Rails.application.routes.draw do
  resources :bugs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'bugs#index'
end
