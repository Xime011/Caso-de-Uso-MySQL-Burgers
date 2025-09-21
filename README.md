# 🍔 Caso de Uso MySQL: "Burgers" - Gestión Inicial de Datos para una Hamburguesería

💡 Resumen del Proyecto
Este repositorio contiene un caso de uso ficticio centrado en la creación e inicialización de una base de datos relacional desde cero para un nuevo negocio de hamburguesas. El objetivo principal es establecer una estructura de datos sólida y escalable utilizando MySQL para soportar futuras operaciones de ETL y análisis de datos.

🧐 El Desafío <br>
Una nueva cadena de hamburguesas ha comenzado operaciones y no dispone de ninguna infraestructura tecnológica para el almacenamiento de datos. Necesitan urgentemente:
1.	Diseñar y crear una base de datos (Burguers) en MySQL.
2.	Definir las tablas esenciales (clientes, menu, ventas) con las relaciones adecuadas.
3.	Cargar los datos históricos iniciales.
4.	Realizar las primeras tareas de mantenimiento de datos (actualización e inserción de registros).
5.	Crear un Modelo Entidad-Relación (MER) para su presentación a la directiva.
🎯 Rol: Este proyecto simula el trabajo de un Analista de Datos/DBA Junior al sentar las bases para la futura toma de decisiones basada en datos.

🛠️ Tecnologías Utilizadas <br>
MySQL -	Base de Datos Relacional <br>
SQL - Lenguaje para DDL (Definición) y DML (Manipulación) <br>
Archivos CSV -Fuente de datos históricos

🎯 Consignas Desarrolladas (Paso a Paso) <br>
El script burguers.sql resuelve secuencialmente las siguientes tareas de un proyecto real: <br>
1.	✅ Creación de DB y Tablas: Establecimiento de la base de datos Burguers y las tablas ventas, menu y clientes.
2.	💾 Carga Inicial de Datos: Inserción masiva de los registros históricos contenidos en los archivos CSV.
3.	🔄 Mantenimiento y Corrección de Datos (DML):
o	UPDATE: Corrección de una celda errónea en la tabla ventas.
o	INSERT: Adición de una venta faltante al registro histórico.
4.	🔑 Integridad Referencial (DDL): Asignación de Primary Keys (PK) (id_cliente, id_producto) y Foreign Keys (FK) para garantizar la consistencia en ventas.
5.	📊 Documentación: Creación del Modelo Entidad-Relación (MER) para visualizar la estructura final.

📂 Contenido del Repositorio 


•	burguers.sql: Script SQL completo que implementa todas las consignas mencionadas, desde el CREATE DATABASE hasta la aplicación de las FKs y las correcciones de datos. <br>
•	data/: Carpeta que contiene los archivos CSV de origen (clientes.csv, menu.csv, ventas.csv). <br>
•	MER_Burguers.png: Imagen del Modelo Entidad-Relación generado para la directiva.

🚀 Habilidades Demostradas <br>
Este proyecto es una evidencia práctica de mis habilidades en:


•	Diseño de Bases de Datos: Modelado de un negocio real en un esquema relacional.<br>
•	SQL: Uso de DDL (CREATE, ALTER) y DML (INSERT, UPDATE).<br>
•	Integridad de Datos: Implementación de PKs y FKs para asegurar la calidad y consistencia.




