Rails.application.routes.draw do

  resources :categories do
    resources :jobs
  end


  root "categories#index"


end
