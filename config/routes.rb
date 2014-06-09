Techdate::Application.routes.draw do
  
  # root to: 'users#index'

  devise_for :users, controllers: {registrations: 'users'}

  devise_scope :user do
    resources :users do  #, only: [:index]
      resources :messages
    end
  end

  get '/users/:user_id/profile', to: 'profiles#show', as: :show_user_profile
  get '/users/:user_id/profile/edit', to: 'profiles#edit', as: :edit_user_profile
  put 'users/:user_id/profile', to: 'profiles#update', as: :update_user_profile

  # resources :users do
  #   resources :profiles, except: [:new, :create, :destroy]
  # end

end
