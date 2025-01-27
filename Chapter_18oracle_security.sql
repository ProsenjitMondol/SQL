
show user;
connect SYSTEM/0000;

grant CREATE session to dora;

show user;

CONNECT dora/avocado;

show dora;

alter user Dora IDENTIFIED by psyche;

grant CREATE session to dora;

CONNECT dora/psyche;

-- show all user

SELECT username FROM dba_users;


-- show all profile 

 SELECT DISTINCT profile FROM dba_profiles;



-- show profile attribute

SELECT RESOURCE_NAME, LIMIT
FROM DBA_PROFILES
WHERE PROFILE = 'LIMITED_PROFILE';


-- create and connect a new user

 create user prosen identified by prosen;

 show user;
 GRANT CREATE SESSION to prosen;
 show USER;
 CONNECT prosen/prosen;

-- Password Change
 show USER;
 USER is "PROSEN"

  password
Changing password for PROSEN
Old password:prosen
New password:pro
Retype new password:pro
Password changed

show user
USER is "PROSEN"
SQL> connect system/0000
Connected.
SQL> show user
USER is "SYSTEM"
SQL> connect prosen/pro;
Connected.
SQL> show user
USER is "PROSEN"
SQL>

-- FAILED LOGIN ATTEMPTS

 show user
USER is "SYSTEM"

-- create profile
SQL> create profile limit_profile limit
  2  failed_login_attempts 3;

Profile created.


-- create user
SQL> create user jane identified by eyre
  2  profile limit_profile;

User created.

SQL> show user
USER is "SYSTEM"
SQL> grant create session to jane;

Grant succeeded.

SQL> connect jane/eyre;
Connected.
SQL> show user
USER is "JANE"
SQL> connect system/0000
Connected.
SQL> show user
USER is "SYSTEM"
SQL> connect jane/eyr;
ERROR:
ORA-01017: invalid username/password; logon denied


Warning: You are no longer connected to ORACLE.
SQL> connect jane/eyr;
ERROR:
ORA-01017: invalid username/password; logon denied


SQL> connect jane/eyr;
ERROR:
ORA-01017: invalid username/password; logon denied


SQL> connect jane/eyr;
ERROR:
ORA-28000: the account is locked

--  account unlock

alter user JANE account unlock;
User altered.
SQL> connect jane/eyre;
Connected.
SQL> show user
USER is "JANE"


-- Profile update

alter profile LIMITED_PROFILE limit
PASSWORD_LOCK_TIME 2;

-- PASSWORD_LOCK_TIME 

-- Combined

 create profile combined_profile limit
    failed_login_attempts 2
    password_life_time 10
    password_reuse_time 5
    password_reuse_max 2
    password_lock_time 2
    password_grace_time 8
  ;

Profile created.
create user JANEcom identified by eyre
profile COMBINED_PROFILE;

user created

grant CREATE SESSION to JANEcom;

connect  JANEcom/pk;

connect  JANEcom/pk;
ERROR:
ORA-28002: the password will expire within 8 days


Connected.
SQL> show user
USER is "JANECOM"




-- password expire
 connect dora/dora;
ERROR:
ORA-28001: the password has expired


Changing password for dora
New password:
Retype new password:
Password changed
Connected.
SQL> connect dora/dora
Connected.
SQL> show user
USER is "DORA"

-- Alter user profile
alter user dora profile LIMITED_PROFILE;
User altered.

-- PASSWORD_REUSE_MAX,PASSWORD_REUSE_TIME    //PASSWORD_REUSE_TIME is 30 and PASSWORD_REUSE_MAX is 10, the user can reuse a password after 30 days if it is not one of the last 10 passwords used.
alter profile LIMITED_PROFILE limit
PASSWORD_REUSE_MAX 3
PASSWORD_REUSE_TIME UNLIMITED;

create user password identified by pass profile LIMITED_PROFILE;

User created.
SQL> show user;
USER is "SYSTEM"
SQL> grant CREATE SESSION to password;

Grant succeeded.
SQL> connect password/pass;
Connected.
SQL> password
Changing password for PASSWORD
Old password:
New password:
Retype new password:
Password changed
SQL> password
Changing password for PASSWORD
Old password:
New password:
Retype new password:
Password changed
SQL> password
Changing password for PASSWORD
Old password:
New password:
Retype new password:
Password changed
SQL> password
Changing password for PASSWORD
Old password:
New password:
Retype new password:
Password changed
SQL> password
Changing password for PASSWORD
Old password:
New password:
Retype new password:
ERROR:
ORA-28007: the password cannot be reused


Password unchanged
SQL> password
Changing password for PASSWORD
Old password:
New password:
Retype new password:
Password changed
-- In this case we cann't use mutually exclusive mean if we set a value for one of them, the other must not be set to UNLIMITED.

-- Assignment

create profile combine limitpassword_life_time 10
    password_grace_time 8
    password_reuse_max 3
    password_lock_time 1
    failed_login_attempts 2
    password_reuse_time 10
    ;

    Profile created.

