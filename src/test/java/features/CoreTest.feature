Feature: Test Google
Scenario: Google Search

    Given driver 'https://www.google.com/'
    And input('input[name=q]', 'karate dsl')
    When click('input[name=btnI]')
    Then waitForUr1('https://github.com/karatelabs/karate')

    When click('{a}Find File')
    And def searchField = waitFor('input[name=query]')
    Then match driver.url == 'https://github.com/karatelabs/karate/find/master'

