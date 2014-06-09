Techdate::Application.routes.draw do
  
  # root to: 'users#index'

  devise_for :users, controllers: {registrations: 'users'}

  get "/messages/:type",constraints: { type: /inbox|sent/ }, to: "messages#index", as: :mailbox_type_messages #Gerry's suggestion to distinguish between the inbox and sent_box contexts in the view
  resources :messages, only: [:show, :index, :update] do # changed :destroy to :update
    # collection do
    #   get :inbox
    #   get :sent
    # end
  end

  devise_scope :user do
    resources :users do  #, only: [:index]
      resources :messages, only: [:new, :create]
    end
  end

  get '/users/:user_id/profile', to: 'profiles#show', as: :show_user_profile
  get '/users/:user_id/profile/edit', to: 'profiles#edit', as: :edit_user_profile
  put 'users/:user_id/profile', to: 'profiles#update', as: :update_user_profile

  # resources :users do
  #   resources :profiles, except: [:new, :create, :destroy]
  # end

end
