Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :products
  devise_for :models
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  devise_scope :user do  
    get '/users/edit' => 'users/registrations#edit'     
  end
  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#landing"

  get "/about-us", to: "home#about-us"
  get "/apps", to: "home#apps"
  get "/pricing", to: "home#pricing"
  
  #for shops
  get "/shops", to:"shops#index", as: :shops
  get "/shops/:shop_id", to: "shops#show", as: :shop
  #for shop/products
  
end
