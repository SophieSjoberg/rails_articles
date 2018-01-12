Given("The following articles exist") do |table|
  table.hashes.each do |hash|
    FactoryBot.create(:article, hash)
  end
end

When("I click {string}") do |element|
  click_link_or_button element
end

Then("I should be on {string} article page") do |article_title|
  article = Article.find_by(title: article_title)
  visit article_path(article)
end

Then("show me the page") do
  save_and_open_page
end
