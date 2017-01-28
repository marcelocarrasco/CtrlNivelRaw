#!/bin/bash
<<'COMMENT'
Saca lineas innecesarias de los logs antes de ser enviados via email
Params: RUTA = <PROYECTO>/PentahoLogs
COMMENT
#
RUTA=$1
#
sed -i '/org.apache.karaf.main/,/org.apache.cxf.endpoint.ServerImpl initDestination/d' $RUTA
#
sed -i '/cfgbuilder/d' $RUTA
exit
