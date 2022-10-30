sqlite3 -separator '  ' ${COOKIES:-Cookies} \
   'select host_key, name, value, path from cookies'
