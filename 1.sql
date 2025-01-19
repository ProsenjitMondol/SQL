select * from location;
show user;
SELECT * from newspaper;

describe newspaper;
set FEEDBACK OFF;

SELECT * from NEWSPAPER WHERE section='F' ORDER by page,FEATURE;

select Feature, Section, Page from NEWSPAPER
 where Section = 'F'
 order by Page desc, Feature;

  select Feature, Section, Page
 from NEWSPAPER
 where Page = 6;


 select Feature, Section, Page
 from NEWSPAPER
 where Section = 'B';

 select Feature, Section, Page
 from NEWSPAPER
 where Page > 4;