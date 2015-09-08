Given /^I am on the Get Started Screen$/ do
  @app.getting_started_1_screen.await
end

When /^I touch the arrow icon$/ do
  @app.getting_started_1_screen.touch_arrow
end

Then /^I am on the next screen$/ do
  @app.getting_started_2_screen.await
end