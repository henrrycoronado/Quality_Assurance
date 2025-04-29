Feature: crear mascota feature
  Background:
    * url baseUrl
    * def petId = 2005
  Scenario:
    Given path 'pet'
    And request
      """
      {
        "id": 2005,
        "category": {
          "id": 1,
          "name": "gato"
        },
        "name": "JP",
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
    When method PUT
    Then status 200
    And match response.name == 'JP'
    And match response.category.name == 'gato'