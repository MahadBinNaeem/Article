class Article < ApplicationRecord
  include Visible
  include ApplicationHelper
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true, length: {minimum:10}
  include ActiveModel::AttributeMethods
  include ActiveModel::Conversion
  include ActiveModel::Serialization
  include ActiveModel::Lint::Tests
  include ActiveModel::SecurePassword
  has_secure_password
  has_secure_password :recovery_password, validations: false
  attr_accessor :password
  attr_accessor :password_digest, :recovery_password_digest
  setup do
    @model = Person.new
  end 
  attr_accessor :title
  def attributes
    {'title'=>nil}
  end
end
