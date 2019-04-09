module Types
  class UserType < BaseObject
    field :id, Integer, null: false
    field :email, String, null: false
  end
end
