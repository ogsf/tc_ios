class TcSellsApp

  def initialize(driver)
    @driver = driver
  end

  def getting_started_1_screen
    @getting_started_1_screen ||= GettingStarted1.new(@driver)
    @current_screen = @getting_started_1_screen
  end

    def getting_started_2_screen
    @getting_started_2_screen ||= GettingStarted2.new(@driver)
    @current_screen = @getting_started_2_screen
  end

end