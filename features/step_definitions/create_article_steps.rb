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

Then("I should be on {string} page") do |article_title|
  article = Article.find_by(title: article_title)
  expect(page.current_path).to eq "/articles/#{article.id}"
end
