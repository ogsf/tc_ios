class GettingStarted2

  def initialize(driver)
    @driver = driver
  end

  def await
    @driver.wait_for_element_exists( "label marked:'Okay'" )
  end

end
