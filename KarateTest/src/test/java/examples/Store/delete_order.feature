Feature: Eliminar orden
  Background:
    * url baseUrl
    * def orderId = 10
  Scenario:
    Given path 'store/order', orderId
    When method DELETE
    Then status 200
