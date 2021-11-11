Rails.application.routes.draw do
  resources :teste_mongos
  root to: "teste_mongos#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
