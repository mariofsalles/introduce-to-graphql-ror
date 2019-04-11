module Types

  class UserInputType < GraphQL::Schema::InputObject
    graphql_name "UserInputType"
    description "All attributes to create an User"
    argument :id, Integer, required: false
    argument :email, String, required: true
    argument :password, String, required: false
  end

  class UserType < Types::BaseObject
    description "An User"
      field :id, Integer, null: true
      field :email, String, null: true
      field :password, String, null: true
  end

end