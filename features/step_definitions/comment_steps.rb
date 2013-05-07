Given(/^I am on the homepage$/) do
  visit root_path
end

When(/^I leave a comment "(.*?)"$/) do |c|
  fill_in 'comment[body]', :with => c
  click_button 'Create Comment'
end

Then(/^a comment should be created$/) do
  assert_equal 1, Comment.count
end

Then(/^a comment should be created by "(.*?)"$/) do |email|
  assert_equal 1, User.find_by_email(email).comments.length
end