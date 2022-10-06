class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user

    can :manage, Category, author: user
    can :manage, Movement, author: user
  end
end
