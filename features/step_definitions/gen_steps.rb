
Then /^I mark test as pending$/ do
  pending ("Code not implemented")
end

Then /^I pause "(\d+)" seconds$/ do |time|
  sleep time.to_i
end
