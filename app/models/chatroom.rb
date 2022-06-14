class Chatroom < ApplicationRecord
  belongs_to :recipient_id
  belongs_to :sender_id
end
