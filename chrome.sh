sqlite3 -separator '  ' ${COOKIES:-Cookies} \
   'select host_key, name, value, path, expires_utc from cookies'
