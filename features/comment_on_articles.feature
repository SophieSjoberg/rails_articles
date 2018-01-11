Feature: Comment on article
  As a reader
  In order to leave a written remark expressing my opinion
  I would like to be able to comment on articles

  Background:
    Given The following articles exist
      | title            | content                                |
      | Learning Rails 5 | Excited about learning a new framework |

    Scenario: Successfully comment on an article
        Given I visit the landing page
        And I click "Learning Rails 5" link
        When I fill in "Email" with "sophie@random.com"
        And I fill in "Comment" with "Great article!"
        And I click "Create comment" button
        Then I should be on "Learning Rails 5" page
        And I should see "Your comment was added successfully!"
        And I should see "Great article!"
        And I should see "Commented by: sophie@random.com"
