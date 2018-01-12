Feature: Comment on article
  As a reader
  In order to leave a written remark expressing my opinion
  I would like to be able to comment on articles

  Background:

    Given The following articles exist
      | title            | content                                |
      | Learning Rails 5 | Excited about learning a new framework |
      | My day so far    | There's no more room in my head        |

    Given I am on the landing page

    Scenario: Successfully comment on an article
        When I click "Learning Rails 5"
        And I fill in "Email" with "sophie@random.com"
        And I fill in "Comment" with "Great article!"
        And I click "Create comment"
        Then I should be on "Learning Rails 5" article page
        Then show me the page
        And I should see "Your comment was added successfully!"
