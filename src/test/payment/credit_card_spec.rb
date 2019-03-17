require 'rspec'
require 'selenium-webdriver'

describe 'go to payment and use voucher' do

  app = nil

  before(:each) do
    app = AbstractPage.new(Selenium::WebDriver.for (:chrome))
  end

  it 'should declined voucher' do

      app
          .go_to_home_page
          .click_on_login
          .user_email('karolagrochowina@gmail.com')
          .user_password('')
          .user_remember
          .user_submit

  end

  after(:each) do
    app.close_browser
  end

end