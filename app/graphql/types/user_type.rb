class Types::UserType < Types::BaseObject
  description "An User"
    field :id, Integer, null: false
    field :email, String, null: false
end
