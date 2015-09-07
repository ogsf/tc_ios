require 'calabash-cucumber/launcher'


# APP_BUNDLE_PATH = "#{ENV['HOME']}/src/tc_test/consumer-sell.app"
# You may uncomment the above to overwrite the APP_BUNDLE_PATH


Before do |scenario|

  #inject_dylib allows us to run without the calabash libraries embedded in the app.  
  #Removing it makes the tests run faster
  ##inject_dylib is needed to run simulator tests. we need to come to a middle ground
  # launch_options = { :uia_strategy => :host, :inject_dylib => true}
  launch_options = { :inject_dylib => true}

  @calabash_launcher = Calabash::Cucumber::Launcher.new
  unless @calabash_launcher.calabash_no_launch?
    @calabash_launcher.relaunch(launch_options)
    @calabash_launcher.calabash_notify(self)
  end
end

After do |scenario|
  unless @calabash_launcher.calabash_no_stop?
    calabash_exit
    if @calabash_launcher.active?
      @calabash_launcher.stop
    end
  end
end

at_exit do
  launcher = Calabash::Cucumber::Launcher.new
  if launcher.simulator_target?
    launcher.simulator_launcher.stop unless launcher.calabash_no_stop?
  end
end
