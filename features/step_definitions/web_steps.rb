
When /^I go to the (.*) page$/ do |page|
  case page
  when "home"
    visit("/")
  when "accounts"
    visit("/accounts")
  when "orders"
     visit("/orders")
  when "controls"
    visit("/controls")
  when "new_account"
    visit("/accounts/new")
  when "new_order"
    visit("/orders/new")
  when "new_control"
    visit("/controls/new")
  end
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

Then /^I should not see "([^"]*)"$/ do |text|
  page.should have_no_content(text)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
    click_link(link)
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
    fill_in(field, :with => value)
end

When /^(?:|I )press "([^"]*)"$/ do |button|
    click_button(button)
end

When /^(?:|I )check "([^"]*)"$/ do |field|
    check(field)
end

When /^(?:|I )uncheck "([^"]*)"$/ do |field|
    uncheck(field)
end

When /^(?:|I )choose "([^"]*)"(?: within "([^"]*)")?$/ do |field, selector|
  with_scope(selector) do
    choose(field)
  end
end

When /^(?:|I )select "([^"]*)" from "([^"]*)"$/ do |value, field|
  select(value, :from => field)
end
