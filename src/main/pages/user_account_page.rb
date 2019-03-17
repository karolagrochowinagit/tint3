require_relative '../../../src/main/pages/abstract_page'
require_relative '../../../src/main/pages/log_in_page'

class UserAccountPage < AbstractPage

  def initialize(driver)
    super (driver)
  end

  def go_to_user_account
    @@driver.navigate.to "https://www.tintup.com/admin"
  end


end