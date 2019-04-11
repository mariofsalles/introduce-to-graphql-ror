module Types

  class UserInputType < GraphQL::Schema::InputObject
    graphql_name "UserInputType"
    description "All attributes to create an User"
    argument :email, String, required: true
    argument :password, String, required: false
  end

  class UserType < Types::BaseObject
    description "An User"
      field :id, Integer, null: false
      field :email, String, null: false
      field :password, String, null: false
  end

end