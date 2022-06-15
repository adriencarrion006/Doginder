class ChatroomsController < ApplicationController
  def show
    @message = Message.new(@message)
    @chatroom = Chatroom.find(params[:id])
  end
end
