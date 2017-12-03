Given("The following articles exist") do |table|
  table.hashes.each do |article|
    Article.create(article)
  end
end

Given("I click {string}") do |link|
  click_link_or_button link
end
