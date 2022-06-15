class Chatroom < ApplicationRecord
  # belongs_to :user
  # # belongs_to :sender_id
  has_many :messages
  # validates :recipient, presence: true

end
