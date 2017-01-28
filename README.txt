----------------------------------
Contenido de las carpetas creadas:
----------------------------------

HolaMundo/ --> nombre del proyecto
├── Data                     --> contendra todos los datos necesarios, xml, csv, templates, etc.
├── holamundo_cnf.properties --> contiene datos de conexion a la BD, como toda otra configuración necesaria.
├── PentahoLogs              --> ubicación de todos los logs generados por el desarrollo, es mandatorio que los archivos terminen en .log
├── PentahoSourceFiles       --> ubicación de los fuentes de Pentaho, .ktr y .kjb
├── PLSQL                    --> ubicación del código fuente de la BD y scripts sql necesarios para la aplicación.
├── Rework                   --> ubicación de los scripts de rework .kjb, .ktr
├── Scripts                  --> ubicación de los scripts necesarios para la aplicación .sh
│   ├── cleanupLogs.sh
│   └── deleteEmptyLogs.sh
└── Tables                   --> ubicación de los scripts con la creación de las tablas implicadas.

---------
NOTA:
-----
     Esta es solo la estructura inicial, cualquier otro directorio puede ser agregado sin problemas. Esto tambien aplica al archivo .properties,
contiene solo la configuración inicial, cualqueir configuración necesaria para el proyecto, puede ser agreda sin problemas.
En cuanto a la importancia de que todos los archivos de log terminen en .log, es por que existe un proceso cross a todos los proyectos que limpia
los archivos de log con una antiguedad mayar a tres (3) días.
