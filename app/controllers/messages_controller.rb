class MessagesController < ApplicationController
  before_action :require_user
  
  def create
    @message = current_user.messages.build(message_params)
    if @message.save
      ActionCable.server.broadcast "chatroom_channel", { 
        message: render_message(@message, current_user) 
      }
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def render_message(message, current_user)
    ApplicationController.renderer.render(partial: 'messages/message', locals: { message: message, current_user: current_user })
  end
end
