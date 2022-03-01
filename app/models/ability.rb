# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.is_manager?
      can :manage, :all
    else
      can :read, :all
      can :create, :all
      cannot :update, :all
    end
  end
end
