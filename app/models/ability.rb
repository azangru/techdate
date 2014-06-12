class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user (not logged in)
      if user.role == "admin"
        can :manage, :all
      elsif user.role == "premium_user"
        can :read, Profile
        can :update, Profile, :user_id => user.id
        can :create, Message
        can :read, Message, :recepient_id => user.id 
        can :read, Message, :sender_id => user.id
      elsif user.role == "basic_user"
        can [:read, :update], Profile, :user_id => user.id
      end
  end
end
