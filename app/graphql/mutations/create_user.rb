module Mutations
  class CreateUser < GraphQL::Schema::Mutation
    null true

    argument :email, String, required: true
    argument :password, String, required: false

    def resolve(email:, password:, password_confirmation:)
      User.create(email: email, password: password)
    end

  end
end