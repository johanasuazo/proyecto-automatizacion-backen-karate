Feature: Connect
  Background:
    * url 'https://jsonplaceholder.typicode.com/users/1/albums'

  Scenario: Establecer una conexión (CONNECT)
    Given url 'https://jsonplaceholder.typicode.com/users/1/albums'
    When method connect
    Then eval karate.log('Response Time:', responseTime) && responseTime < 5000