# PADEL PLANET
### Proyecto Individual Backend
##### Especificaciones
La empresa Padel Planet nos solicita digitalizar su negocio, ofreciendo una webapp donde poder consultar partidos, rankings, clubes, hacer reservas de pistas, y con un e-commerce de material de este deporte.

#### Requisitos técnicos del proyect
- Obligatorios:
    - README
    - al menos una base de datos (SQL o NoSQL) OK
    - funciones de usuario (registro, login, logout, ...) OK
    - al menos un middleware OK
    - al menos dos endpoints (vistas o API REST) que requieran autenticación (login) OK
    - al menos dos endpoints para la API REST con diferentes métodos HTTP (get,post,put,patch,delete) OK
    - al menos un test unitario OK
- Recomendados:
    - usar un scraper para obtener datos de otra web
    - al menos un test de integración
    - Vistas y API REST (no tienen por qué ser las mismas)
    - al menos un endpoint para la API REST que requiera autorización (JWT)
- Opcionales:
    - cargar o descargar archivos (ej. cargar imágenes o descargar los datos conseguidos con el scraper) OK
    - documentación de la API REST con Swagger
    - documentación del código con JSDoc

#### Uso de la web
La zona clubes es accesible una vez ha iniciado sesión.
La capacidad de borrar y editar clubes está restringida a administradores.

La api de la web, a partir de la cual se pueden consultar clubes > pistas > partidos está disponible iniciando sesión, su ruta es `api/clubs`.

#### Puesta en marcha del proyecto:
1. Genere un archivo `.env` teniendo como referencia el `.env.example`.
2. Una vez clonado el repositorio en su equipo, ejecute el siguiente comando:
`docker compose up --build`
3. Para acceder mediante el navegador, primero consulte la IP que su equipo ha dado al proyecto:
`docker inspect node_padelplanet | grep "IPAddress"`
Acceda a esa IP añadiendole el puerto :3000 al final.