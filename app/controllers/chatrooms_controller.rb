class ChatroomsController < ApplicationController
  def index
@chatrooms = Chatroom.all
  end
  def show
    @message = Message.new(@message)
    @chatroom = Chatroom.find(params[:id])
  end
end
