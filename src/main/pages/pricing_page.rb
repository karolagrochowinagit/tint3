require_relative '../../../src/main/pages/abstract_page'

class PricingPage

  def initialize(driver)
    super (driver)
  end

  def go_to_pricing_page
    @@driver.navigate.to "https://www.tintup.com/pricing/"
  end
  def signage_plan
    @@driver.find_element(:xpath, '/html/body/div[1]/div[1]/div[1]/div[2]/a/button').click
  end

  def monthly_toggle
    @@driver.find_element(:xpath, '/html/body/div[1]/div[1]/div/div[2]/div[1]/div[3]/div[2]').click
  end

  def select_inform_plan
    @@driver.find_element(:xpath, '/html/body/div[1]/div[1]/div[1]/div[2]/a/button').click
  end

  def monthly_inform_plan
    @@driver.find_element(:xpath, '/html/body/div/div/div[1]/div[1]/div[2]').click
  end

end