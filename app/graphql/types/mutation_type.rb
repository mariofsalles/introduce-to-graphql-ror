module Types
  class MutationType < Types::BaseObject

    field :create_user, UserType, null: true, 
    description: 'Add an user' do
      argument :user, UserInputType, required: true
    end

    def create_user(user:)
      User.create user.to_h
    end

    field :update_user, Boolean, null: false,
    description: 'Update an user' do
      argument :user, UserInputType, required: true
    end

    def update_user(user:)
      existing = User.where(id: user[:id]).first
      existing&.update user.to_h
    end

    field :delete_user, Boolean, null: false,
    description: 'Delete an user' do
      argument :id, Integer, required: true
    end

    def delete_user(id:)
      User.where(id: id).destroy_all
      true
    end
    # ANOTHER WAY #
    # field :create_user, UserType, mutation: Mutations::CreateUser
    
  end
end
