Feature: Delete an album

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Delete de un album
    * def idAlbumExistente = 1
    Given path '/albums', idAlbumExistente
    When method delete
    Then status 200

