Feature: Comment on article
  As a reader
  In order to leave a written remark expressing my opinion
  I would like to be able to comment on articles

  Background:
    Given The following articles exist
      | title            | content                                |
      | Learning Rails 5 | Excited about learning a new framework |

  Scenario: Visitor comments on article
    Given I visit the landing page
    And I click "Comment"
    And I fill in "Comment" with "Text"
    And I click "Submit Comment" button
    Then I should see "Text"
