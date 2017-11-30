Given("I visit the landing page") do
  visit root_path
end

When("I click {string} link") do |link|
  click_link_or_button link
end

When("I fill in {string} with {string}") do |field_name, content|
fill_in field_name, with: content
end

When("I click {string} button") do |button|
  click_button button
end

Then("I should be on {string} page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
