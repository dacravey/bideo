require 'rails_helper'

describe "the add a message process" do
  it "sends a message", js: true do
    visit root_path
    # save_screenshot("screenshot/textscreenshot.png")
    fill_in "To", with: "9373719337"
    fill_in "From", with: "5033369801"
    fill_in "Body", with: "Here is my text message!"
    click_button "Submit"
    page.should have_content "Here is my text message!"
  end
end
