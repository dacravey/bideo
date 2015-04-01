class ContactsController < ApplicationController

  def index
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      respond_to do |format|
        format.html do
        flash[:notice] = "Success"
        redirect_to messages_path
      end
        format.js
      end
    else
      flash[:notice] = "Fail"
      render 'index'
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  private

  def message_params
    params.require(:message).permit(:to, :from, :body)
  end
end
