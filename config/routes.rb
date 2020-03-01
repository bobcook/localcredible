Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end
end
