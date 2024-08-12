Rails.application.routes.draw do
  resources :school_classes
  resources :students
  patch 'school_classes/:id', to: 'school_classes#update'
end
