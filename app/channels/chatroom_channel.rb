class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom
  end
  def receive(data)
    ActionCable.server.broadcast(Chatroom.find(params[:id]), data)
  end
end
