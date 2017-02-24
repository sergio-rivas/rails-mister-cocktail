Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create, :show]
  end
  resources :doses, only:[:edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cocktails#index'
end
