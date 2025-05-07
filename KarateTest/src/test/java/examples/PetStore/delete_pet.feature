Feature: Eliminar mascota
  Background:
    * url baseUrl
    * def petId = 2005
  Scenario:
    Given path 'pet', petId
    When method DELETE
    Then status 200
