Feature: Obtener order
  Background:
    * url baseUrl
    * def orderId = 10
  Scenario:
    Given path 'store/order', orderId
    When method GET
    Then status 200
