module Types
  class MutationType < Types::BaseObject

    # field :create_user, UserType, null: false, 
    # description: 'Mutation for add an User' do
    #   argument :email, String, required: true
    #   argument :password, String, required: true
    # end
    # def create_user(email:, password:)
    #   User.create(email: email, password: password)
    # end

    # ANOTHER WAY #
    field :create_user, UserType, mutation: Mutations::CreateUser
    
  end
end
