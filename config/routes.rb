Rails.application.routes.draw do
  resources :students, except: [:index, :destroy]
  resources :school_classes, except: [:index, :destroy]
end
