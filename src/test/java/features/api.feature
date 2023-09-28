Feature: Test Automation Rest API

  @api
  Scenario: Test get list user normal
    Given prepare url for "USER_GOREST"
    And hit api get list users
    Then validation status code is equals 200
    Then validation response body get list users
    Then validation response json with JSONSchema "get_list_users_normal.json"

  @api
  Scenario: Test create new user normal
    Given prepare url for "USER_GOREST"
    And hit api post create new users
    Then validation status code is equals 201
    Then validation response body post create new user
    Then validation response json with JSONSchema "post_create_user_normal.json"