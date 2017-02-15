Rails.application.routes.draw do
  resources :ads
  resources :adgroups do
    resources :ads
  end
  resources :campaigns do
    resources :adgroups
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
