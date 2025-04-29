Feature: Obtener mascota
  Background:
    * url baseUrl
    * def petId = 2005
  Scenario:
    Given path 'pet', petId
    When method GET
    Then status 200
    And match response.id == petId
    And match response.name == 'PJ'
    And match response.category.name == 'perro'
