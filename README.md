## Flutter Multiproduct App
Este proyecto es una aplicación Flutter que consume una API RESTful para gestionar un catálogo de productos. Con esta aplicación, puedes crear, obtener, actualizar y eliminar productos utilizando una interfaz amigable.

### Características
Mostrar una lista de productos obtenidos desde la API.
Crear nuevos productos con nombre, descripción y precio.
Actualizar productos existentes.
Eliminar productos del catálogo.
Notificaciones de errores y confirmaciones de acciones.

### Requisitos
Backend: La aplicación consume la API documentada en el proyecto backend correspondiente.

Entorno Flutter: Asegúrate de tener Flutter instalado.


### Instalación y configuración
Clona este repositorio:
```
git clone https://github.com/cewhizzar/multiproduct.git
```
Cambia al directorio del proyecto:
```
cd multiproduct
```
Configura la URL de la API en el archivo repositories/product_repository.dart:
```
final String apiUrl = "https://http://127.0.0.1:3000/api/products";
```
Corre la aplicación:
```
flutter run
```

### Estructura del Proyecto
models: Contiene el modelo de datos para los productos.

blocs: Implementa el patrón BLoC para manejar eventos, estados y la lógica de negocio.

repositories: Define la lógica para interactuar con la API.

screens: Contiene las pantallas principales de la aplicación.

widgets: Componentes reutilizables de la interfaz de usuario.

### Endpoints de la API
La aplicación consume los siguientes endpoints del backend:

```
POST /api/products      - Crear un nuevo producto
GET /api/products       - Obtener todos los productos
GET /api/products/:id   - Obtener un producto por su ID
PUT /api/products/:id   - Actualizar un producto por su ID
DELETE /api/products/:id- Eliminar un producto por su ID
```