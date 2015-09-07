Given /^I am on the Get Started Screen$/ do
  wait_for(:timeout => 3) { element_exists( "label text:'Get Started.'" ) }
end

When /^I touch the arrow icon$/ do
  touch(query("UIButton")[0])
end

Then /^I am on the next screen$/ do
  wait_for(:timeout => 5) { element_exists("label marked:'Okay'") }
end