Feature: Obtener Inventario
  Background:
    * url baseUrl
  Scenario:
    Given path 'store/inventory'
    When method GET
    Then status 200
    And match response != null
