sqlite3 -separator '  ' ${COOKIES:-Cookies} \
  'select * from cookies'
