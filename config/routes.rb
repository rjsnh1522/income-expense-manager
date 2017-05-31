Rails.application.routes.draw do
  
  devise_for :users
  resources :incomes
  resources :expenses
  get 'savings',to: 'savings#index', as:'get_savings'

devise_scope :user do
  authenticated :user do
    root 'expenses#new', as: :authenticated_root
    
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
