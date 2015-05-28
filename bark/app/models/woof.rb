class Woof < ActiveRecord::Base
  belongs_to :user

  validates :message, presence: true, length: {maximum: 141}
end
