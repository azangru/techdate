Techdate::Application.routes.draw do


  devise_for :users, controllers: {registrations: 'users'}
  # root to: 'users#index'

  devise_scope :user do
    resources :users do  #, only: [:index]
      collection do
        match 'search' => 'users#search', via: [:get, :post], as: :search
      end
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
