Rails.application.routes.draw do
  resources :students, except: [:destroy, :index]
  resources :school_classes, except: [:destroy, :index]
end
