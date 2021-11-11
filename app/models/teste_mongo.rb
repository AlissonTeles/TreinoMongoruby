class TesteMongo
  include Mongoid::Document
  field :User, type: String
  field :Email, type: String
  field :Password, type: String
end
