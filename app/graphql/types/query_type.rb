module Types
  class QueryType < BaseObject
    field :test_field, String, null: false,
    description: "An example field added by the generator" do
      argument :name, String, required: true
    end

    def test_field(name:)
      # Rails.logger.info context[:time] --> insert through controller!! research about it
      "Hello #{name}!"
    end

    field :user, UserType, null: false,
    description: 'Search for one User by ID' do
      argument :id, Integer, required: false
    end

    def user(id:)
      User.where(id: id).first
    end

  end
end
