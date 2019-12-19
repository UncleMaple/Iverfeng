require 'grape'
require 'grape-swagger'

class V1::Api < Grape::API
  version 'v1', using: :path
  content_type :json, 'application/json'
  default_format :json
  # prefix :v1

  mount V1::Users
end
