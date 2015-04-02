class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    @contact = Contact.new
    @messages = Message.all
    @message = Message.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      respond_to do |format|
        format.html do
        flash[:notice] = "Success"
        redirect_to contacts_path
      end
        format.js
      end
    else
      flash[:notice] = "Fail"
      render 'index'
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone_number)
  end
end
