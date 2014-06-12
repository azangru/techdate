# class SignedInConstraint
#   def self.matches?(request)
#     !request.session['warden.user.user.key']
#   end
# end


Techdate::Application.routes.draw do


  devise_for :users, controllers: { registrations: 'users' }

  get "/messages/:type",constraints: { type: /inbox|sent/ }, to: "messages#index", as: :mailbox_type_messages #Gerry's suggestion to distinguish between the inbox and sent_box contexts in the view
  resources :messages, only: [:show, :index, :update] do # changed :destroy to :update
    # collection do
    #   get :inbox
    #   get :sent
    # end
    collection do
      get :unseen
    end
  end

  resources :saved_profiles, only: [:index, :destroy]


  devise_scope :user do
    # root :to => 'users#new', :constraints => SignedInConstraint
    root :to => 'users#index'
    resources :users, only: [:index] do
      collection do
        match 'search' => 'users#search', via: [:get, :post], as: :search
      end
      resources :messages, only: [:new, :create]
      resources :saved_profiles, only: [:create]
    end
  end

  get '/users/:user_id/profile', to: 'profiles#show', as: :show_user_profile

  get '/profile',       to: 'profiles#show',   as: :show_current_user_profile
  get '/profile/edit',  to: 'profiles#edit',   as: :edit_current_user_profile
  put '/profile',       to: 'profiles#update', as: :update_current_user_profile
  get '/profile/views', to: 'profiles#views',  as: :current_user_profile_views
  get '/profile/views/unseen', to: 'profiles#unseen_views', as: :current_user_profile_unseen_views

  # resources :users do
  #   resources :profiles, except: [:new, :create, :destroy]
  # end

end
