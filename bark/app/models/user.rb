class User < ActiveRecord::Base
  has_secure_password

  has_many :woofs

  validates :username, :name, presence: true
  validates :username, uniqueness: true

  def to_param
    username
  end
end
