Given(/^I am on the "([^"]*)" page$/) do |page|
  expect(page).to eq "Learning Rails 5"
end

Then(/^I should see on "([^"]*)" on page$/) do |comment|
  expect(article.comment).to eq comment
end