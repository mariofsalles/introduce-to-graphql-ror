module Types
  class QueryType < BaseObject

    field :test_field, String, null: false
    def test_field
      "Hello World!"
    end

    field :all_users, [UserType], null: false
    def all_users
      User.all
    end
    
  end
end
