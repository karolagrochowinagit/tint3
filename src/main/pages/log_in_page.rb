require_relative '../../../src/main/pages/abstract_page'

class LogInPage < AbstractPage

  def initialize(driver)
    super (driver)
  end

  def go_to_login_page
    @@driver.navigate.to "https://api.tintup.com/credentials/sign_in?redir=/admin&from=admin"
  end

  def user_email(email)
    @@driver.find_element(:id, 'credential_email').send_keys email
  end

  def user_password(password)
    @driver.find_element(:id, 'credential_password').send_keys password
  end

  def user_remember
    @@driver.find_element(:id, 'credential_remember_me').click
  end

  def user_submit
    @@driver.find_element(:name, 'commit').click
  end

end