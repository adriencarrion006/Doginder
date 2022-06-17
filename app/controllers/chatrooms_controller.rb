class ChatroomsController < ApplicationController
  def index
    chat_senders = Chatroom.where(sender: current_user.id)
    chat_recipients = Chatroom.where(recipient: current_user.id)
    @chatrooms = chat_senders + chat_recipients
  end
  def show
    @message = Message.new(@message)
    @chatroom = Chatroom.find(params[:id])
  end
  def create
    recipient_id = Dog.find_by(id: params[:dog_id]).user.id
    if Chatroom.where(sender: current_user.id).where(recipient: recipient_id).present?
      @chatroom = Chatroom.where(sender: current_user.id).where(recipient: recipient_id).first
      # redirect_to chatroom_path(@chatroom)
    elsif Chatroom.where(recipient: current_user.id).where(sender: recipient_id).present?
      @chatroom = Chatroom.where(recipient: current_user.id).where(sender: recipient_id).first
      # redirect_to chatroom_path(@chatroom)
    else
      @chatroom = Chatroom.new
      @chatroom.recipient = recipient_id
      @chatroom.sender = current_user.id
      if @chatroom.save!
        # redirect_to chatroom_path(@chatroom)
      else
        render :new
      end
    end
    redirect_to chatroom_path(@chatroom)


  end
end
