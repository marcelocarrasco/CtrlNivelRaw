#!/bin/bash
<<COMMENT
Borra los logs de la carpeta <PROYECTO>/PentahoLogs cuyo tamaño es 0 
o tiene una sola linea que no representa error
Paramas: RUTA = <PROYECTO> ej. /home/oracle/LimpiaLogs
COMMENT
#
RUTA=$1
LINES=1
a=0
#
for f in $RUTA/*.log; do
  a=$( wc -l $f | sed 's/^\([0-9]*\).*$/\1/' )
  if [ "$a" -le "$LINES" ]
  then
    rm -f "$f"
  fi
done
