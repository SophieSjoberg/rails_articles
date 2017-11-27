When("I am on the landing page") do
  visit '/'
end

Given("the following articles exists") do |table|
  table.hashes.each do |article|
    FactoryBot.create(:article, article)
  end
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end
