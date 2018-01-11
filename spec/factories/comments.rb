FactoryBot.define do
  factory :comment do
    email 'test@test.com'
    content "MyText"
    article nil
    state :submitted
  end
end
