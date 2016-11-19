class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.trainer?
      can :read, :all
      can :manage, Catched, user: user
    else
      can :index, Pokemon
    end
  end
end
