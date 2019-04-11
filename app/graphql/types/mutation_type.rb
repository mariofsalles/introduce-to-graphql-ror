module Types
  class MutationType < Types::BaseObject

    field :create_user, UserType, null: true, 
    description: 'Mutation for add an User' do
      argument :user, Types::UserInputType, required: true
    end
    def create_user(user:)
      User.create user.to_h
    end

    # ANOTHER WAY #
    # field :create_user, UserType, mutation: Mutations::CreateUser
    
  end
end
