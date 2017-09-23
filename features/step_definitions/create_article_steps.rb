When(/^I click "([^"]*)" link$/) do |link|
  click_link_or_button link
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |item, content|
  fill_in item, with: content
end

When(/^I click "([^"]*)" button$/) do |button|
  click_link_or_button button
end


Then(/^I should be on "([^"]*)" on page$/) do |page|
  expect(page).to eq 'Learning Rails 5'
end

Then(/^I should see on "([^"]*)" on page$/) do |title|
  expect(page.title).to eq title
end

Then(/^show me the page$/) do
  save_and_open_page
end
