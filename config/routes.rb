Rails.application.routes.draw do
    resources :characters, only: [:show, :index]

    get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'pages#home'

end
