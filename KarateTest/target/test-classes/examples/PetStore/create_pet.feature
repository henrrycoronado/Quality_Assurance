@create_pet
Feature: crear mascota feature
  Background:
    * url baseUrl

  Scenario:
    Given path 'pet'
    And request
    """
  {
  "id": 2005,
  "category": {
  "id": 1,
  "name": "perro"
  },
  "name": "PJ",
  "photoUrls": [
  "string"
  ],
  "tags": [
  {
  "id": 1,
  "name": "perro negro"
  }
  ],
  "status": "available"
  }
    """
    When method POST
    Then status 200
    And match response.name == 'PJ'
    And match response.category.name == 'perro'