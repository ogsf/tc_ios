class GettingStarted1

  def initialize(driver)
    @driver = driver
  end

  def await
    @driver.wait_for_none_animating(:timeout => 5)
    @driver.wait_for_element_exists( "label text:'Get Started.'" )
  end

  def touch_arrow
    @driver.touch( "UIButton" )[0]
  end
end
