class Testemongos123
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :user, type: String
  field :password_digest, type: String
  field :email, type: String

  validates :user, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true,  :length =>  { :minimum => 5 } , :on => :create

  has_secure_password
end
