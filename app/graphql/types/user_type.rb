module Types
  class UserType < Types::BaseObject

    description "An User"
      field :id, Integer, null: false
      field :email, String, null: false
      field :password, String, null: false

  end
end