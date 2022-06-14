class Message < ApplicationRecord
  belongs_to :chatroom_id
  belongs_to :sender_id
end
