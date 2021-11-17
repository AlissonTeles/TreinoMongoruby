Rails.application.routes.draw do
  resources :testemongos123s
  root to: "testemongos123s#index"
  get 'sign_up', action: :sign_up, controller: :testemongos
  get 'login', action: :login_new, controller: :testemongos
  post 'login', action: :login_create, controller: :testemongos

end
