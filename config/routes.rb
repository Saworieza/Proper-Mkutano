Rails.application.routes.draw do
  resources :advertises

  devise_for :users
  as :user do
    get "/login" => "devise/sessions#new"
    delete "/logout" => "devise/sessions#destroy"
    get "/signup" => "devise/registrations#new"
  end

  resources :events
  resources :homes
  
  root 'homes#index'
end
