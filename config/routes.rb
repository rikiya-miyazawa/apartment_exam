Rails.application.routes.draw do
  root to: 'apartments#index'
  resources :apartments do
    collection do
      post :confirm
    end
  end
end
