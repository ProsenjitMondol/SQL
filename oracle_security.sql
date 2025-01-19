show user;
connect SYSTEM/0000;

grant CREATE session to dora;

show user;

CONNECT dora/avocado;

show dora;

alter user Dora IDENTIFIED by psyche;

grant CREATE session to dora;

CONNECT dora/psyche;
PASSWORD