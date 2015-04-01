class Message < ActiveRecord::Base
  before_create :send_sms

  private
    def send_sms
    response = RestClient::Request.new(
      :method => :post,
      :url => 'https://api.twilio.com/2010-04-01/Accounts/AC3e0af22b6b772460f352ba8c6586fbde/Messages.json',
      :user => 'AC3e0af22b6b772460f352ba8c6586fbde',
      :password => 'e04f17e88eb7b8c81feb1b951dcd7a2f',
      :payload => { :Body => body,
                    :To => to,
                    :From => from }
    ).execute
  end

end
