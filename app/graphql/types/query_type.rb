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

    field :user, Types::UserType, null: false, camelize: false,
    description: 'One user' do
      argument :id, Integer, required: true
    end
    def user(id:)
      User.where(id: id).first
    end
  end
end
