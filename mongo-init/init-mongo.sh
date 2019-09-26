mongo -- "OAUTH_DB" <<EOF
var user = 'OAUTH_USER';
var passwd = 'OAUTH_PASS';
var admin = db.getSiblingDB('admin');
admin.auth(user, passwd);
db.createUser({user: user, pwd: passwd, roles: ["readWrite"]});
EOF
