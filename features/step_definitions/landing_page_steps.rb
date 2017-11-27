When("I am on the landing page") do
  visit '/'
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end
