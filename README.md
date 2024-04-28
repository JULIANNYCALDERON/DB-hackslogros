## BIENVENID@ A LA DB LOGROS_DE_AHSOKA_VOICE

### Descripción: 
Basicamente nuestro repositorio incluye una base de datos creada especificamente para AHSOKA_VOICE que tenia la necesidad de almacenar sus logros, mediante un usuario ya previmente registrado 
Nuestra base de datos contiene 4 tablas que se relacionan entre si:

#### Tablas existentes y sus campos: 

1.Tabla Usuario: Id, Nombre, Fecha de Nacimiento, Correo, Foto, idLogros.
2.Tabla Logros: Id, Titulo, Fecha, Area, Descripcion, Foto.
3.Tabla Likes: Id, Id_usuario, Id_Logros.
4.Tabla Login: Id, Id_usuario, Constraseña.

### PostgreSQL
Para Realizar esta DB como primer paso es descargar PostgretSQL en su version mas avanzada, luego utilizamos PgAdmin que es una aplicación que contiene Postgres en donde puedes realizar tu base de datos de forma grafica. pero tambien tiene la opción de realizarlo mediante codigo SQL.
Particularmente lo utilice porque fue sugerido y ademas es unos de los mejores gestores de base de datos que existe actualmente y muy facil de utilizar.

Unos de los retos mas frecuentes que se puede enfrentar con Postgres es que cuando lo descargas por lo menos en windows no se guarda automaticamente la ruta de almacenamiento de la DB sino que hay que actualizarla,
sino no importa cuantas veces le des BACKUP nunca la va a exportar, primero se debera configurar la ruta donde la vas almacenar y luego puedes exportarla. 

### https://www.youtube.com/watch?v=vVCvyP7ya_4  Aca les dejo un tutorial que me ayudo mucho a resolver este problema 

La idea de todo lo que creamos, es que sea escalativo, pueda evolucionar en el futuro, y yo me imagino esta base de datos, almacenando mas información, Como comentarios de los logros, 
numero de whatssap del usuario, etc. 

## En cuanto al ERD ... 
EL diagrama entidad relacion primeramente lo cree con una aplicación online  que se llama 
 #### https://lucid.app/  
 luego lo descargue como png y esa fue mi guia para realizar mis tablas. Pero el diagrama que les coloque aqui en este repositorio lo descargue en pgAdmin y fue el resultado de la creación previa de la Base de Datos que ya habia creado.
 
 ### Espero que les sea de mucha ayuda Este repositoro y puedan aprovecharlo al máximo...

