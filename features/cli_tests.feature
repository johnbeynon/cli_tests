@announce
Feature: Using the CLI
  Scenario: Logging in 
    When I run `heroku login` interactively
    And I type "john@beynon.org.uk"
    And I type ""
    Then the output should contain "Authentication successful"

  Scenario: Retrieving an app list
    When I run `heroku apps`
    Then the output should contain "mindr-dev-eu"

  Scenario: Creating an app
    When I run `heroku create clitestapp-jb`
    Then the output should contain "Creating clitestapp-jb... done"
    And the output should contain "http://clitestapp-jb.herokuapp.com/ | git@heroku.com:clitestapp-jb.git"

  Scenario: Deleting an app
    When I run `heroku destroy clitestapp-jb --confirm clitestapp-jb`
    Then the output should contain "Destroying clitestapp-jb (including all add-ons)... done"
