Rails.application.routes.draw do
 

  resources :main_ads

  resources :advert3s

  resources :advert2s

  resources :advert1s

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
