Feature: Put an album
  Background:
    * url 'https://jsonplaceholder.typicode.com/users/1/albums'

  Scenario: Actualizar un album que no existe
    Given request [{"userId": 1,"id": 1,"title": "quidem molestiae enim"},{"userId": 1,"id": 2,"title": "sunt qui excepturi placeat culpa"},{"userId": 1,"id": 3,"title": "omnis laborum odio"},{"userId": 1,"id": 4,"title": "non esse culpa molestiae omnis sed optio"},{"userId": 1,"id": 5,"title": "eaque aut omnis a"},{"userId": 1,"id": 6,"title": "natus impedit quibusdam illo est"},{"userId": 1,"id": 7,"title": "quibusdam autem aliquid et et quia"},{"userId": 1,"id": 8,"title": "qui fuga est a eum"},{"userId": 1,"id": 9,"title": "saepe unde necessitatibus rem"},{"userId": 1,"id": 10,"title": "distinctio laborum qui"}]
    When method put
    Then status 200
    And request [{"userId": 1,"id": 22,"title": "Este album no existe"}]


  Scenario: Actualizar un álbum existente
    * url 'https://jsonplaceholder.typicode.com'
    * def idAlbumExistente = 1
    * def datosActualizados =
    """
    {
      "userId": 1,
      "id": 1,
      "title": "Nuevo Título del Álbum"
    }
    """

    Given path '/albums', idAlbumExistente
    And request datosActualizados
    When method put
    Then status 200
    And match response == datosActualizados



