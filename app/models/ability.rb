class Ability
  include CanCan::Ability

  
    # Define abilities for the passed in user here. For example:
    ## Handle the case where we don't have a current_user i.e. the user is a guest
    def initialize(user)  
      user ||= User.new #guest user (not logged in)
      if user.is? :broker
        can :manage, :all
      elsif user.is? :asistant
        can :manage, DetailSale
        can :manage, DetailRent
        can :read, [Owner, Property, Renter, Buyer, Completed]
        #can :create, [Renter, Buyer]
      else
        can :read, :all
      end
    end

   
  
    
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  
end
