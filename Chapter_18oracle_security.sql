
show user;
connect SYSTEM/0000;

grant CREATE session to dora;

show user;

CONNECT dora/avocado;

show dora;

alter user Dora IDENTIFIED by psyche;

grant CREATE session to dora;

CONNECT dora/psyche;


// create and connect a new user

 create user prosen identified by prosen;

 show user;
 GRANT CREATE SESSION to prosen;
 show USER;
 CONNECT prosen/prosen;
 