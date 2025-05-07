Feature: Crear orden
  Background:
    * url baseUrl

  Scenario:
    Given path 'store/order'
    And request
      """
      {
        "id": 10,
        "petId": 2005,
        "quantity": 5,
        "shipDate": "2025-05-05T23:04:23.928Z",
        "status": "placed",
        "complete": true
      }
      """
    When method POST
    Then status 200
    And match response.id == 10
    And match response.petId == 2005