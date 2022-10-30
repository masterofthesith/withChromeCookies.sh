sqlite3 -separator '  ' ${COOKIES:-Cookies} \
  'select host_key, "TRUE", path, "FALSE", expires_utc, name, value from cookies'
