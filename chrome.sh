sqlite3 -separator ' | ' ${COOKIES:-Cookies} \
   'select host_key, path, name, value, encrypted_value from cookies'
