class ChatroomsController < ApplicationController
  def index
@chatrooms = Chatroom.all
  end
  def show
    @message = Message.new(@message)
    @chatroom = Chatroom.find(params[:id])
  end
  def create
    @chatroom = Chatroom.new
    @chatroom.recipient = Dog.find_by(id: params[:dog_id]).user.id
    @chatroom.sender = current_user.id
    
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)

   else
  render :new
   end

  end
end
