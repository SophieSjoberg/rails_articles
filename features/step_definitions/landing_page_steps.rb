When("I am on the landing page") do
  visit root_path
end

Given("the following articles exist") do |table|
  table.hashes.each do |article|
    FactoryBot.create(:article, article)
  end
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("show me the page") do
  save_and_open_page
end
