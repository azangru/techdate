class SessionsController < Devise::SessionsController
  skip_before_filter :auth_user
end