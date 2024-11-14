%let pgm=utl-identify-an-animal-as-canine-using-sql-case-and-ifc-in-sas-r-python-multi-language;

Identify an animal as canine using sql case and ifc in sas r python multi language

A very basic question asked on the python list

Also, easily solved in sas datastep or base r

The sas solutions work in R and Python.
The only difference is IFC function uses IIF in sqllite


  SOLUTIONS  (CASE IS EXACLY THE SAME FOR ALL. SAS IIC is SQLLITE IIF.

    1 sas sql iic     IIC(animal='dog' ,'canine' ,'not-canine') as animal
    2 sas sql case    case when animal="dog" then "canine" else "not-canine" end as animal

    3 r sql iif       IIF(animal='dog' ,'canine' ,'not-canine') as animal
    3 r sql case      case when animal="dog" then "canine" else "not-canine" end as animal

    4 r python iif    IIF(animal='dog' ,'canine' ,'not-canine') as animal
    5 python sql case case when animal="dog" then "canine" else "not-canine" end as animal


stack overflow python
https://tinyurl.com/2ejv4ezx
https://stackoverflow.com/questions/79186037/what-is-the-pandas-version-of-np-select


github
https://tinyurl.com/483h35ms
https://github.com/rogerjdeangelis/utl-identify-an-animal-as-canine-using-sql-case-and-ifc-in-sas-r-python-multi-language

Avoid np.select?

np.select will force a type change to have an homogeneous array,
case_when will allow to create an object column keeping the original type

/*               _     _
 _ __  _ __ ___ | |__ | | ___ _ __ ___
| `_ \| `__/ _ \| `_ \| |/ _ \ `_ ` _ \
| |_) | | | (_) | |_) | |  __/ | | | | |
| .__/|_|  \___/|_.__/|_|\___|_| |_| |_|
|_|
*/

/**************************************************************************************************************************/
/*                                |                                         |                                             */
/*         INPUT                  |        PROCESS                          |            OUTPUT                           */
/*         =====                  |        =======                          |                                             */
/*                                |                                         |                                             */
/* options validvarname=upcase;   | SAS SQL IIC                             |                ANIMAL                       */
/* libname sd1 "d:/sd1";          |                                         |                                             */
/* data sd1.have;                 | select                                  |            not-canine                       */
/*   input animal$;               |    ifc(animal='dog'                     |                canine                       */
/* cards4;                        |       ,'canine'                         |            not-canine                       */
/* cow                            |       ,'not-canine') as animal          |            not-canine                       */
/* dog                            | from                                    |                                             */
/* trout                          |    sd1.have                             |                                             */
/* salmon                         |                                         |                                             */
/* ;;;;                           | SAS SQL CASE                            |                                             */
/* run;quit;                      |                                         |                                             */
/*                                | select                                  |                                             */
/* SD1.HAVE total obs=4           |    case                                 |                                             */
/*                                |       when animal='dog' then 'canine'   |                                             */
/*   ANIMAL                       |       else 'not-canine'                 |                                             */
/*                                |    end as animal                        |                                             */
/*   cow                          | from                                    |                                             */
/*   dog                          |    sd1.have                             |                                             */
/*   trout                        |                                         |                                             */
/*   salmon                       | --------------------------------------  |                                             */
/*                                |                                         |                                             */
/*                                | R SQL IIF                               |                                             */
/*                                |                                         |                                             */
/*                                | select                                  |                                             */
/*                                |    iif(animal='dog'                     |                                             */
/*                                |     ,'canine'                           |                                             */
/*                                |     ,'not-canine') as animal            |                                             */
/*                                | from                                    |                                             */
/*                                |    have                                 |                                             */
/*                                |                                         |                                             */
/*                                |                                         |                                             */
/*                                |                                         |                                             */
/*                                | R SQL CASE (SAME IN SAS R AND PYTHON)   |                                             */
/*                                |                                         |                                             */
/*                                | select                                  |                                             */
/*                                |    case                                 |                                             */
/*                                |       when animal='dog' then 'canine'   |                                             */
/*                                |       else 'not-canine'                 |                                             */
/*                                |    end as animal                        |                                             */
/*                                | from                                    |                                             */
/*                                |    have                                 |                                             */
/*                                |                                         |                                             */
/*                                |-----------------------------------------|                                             */
/*                                |                                         |                                             */
/*                                | PYTHON SQL IIF                          |                                             */
/*                                |                                         |                                             */
/*                                |  select                         \       |                                             */
/*                                |     iif(animal="dog"            \       |                                             */
/*                                |      ,"canine"                  \       |                                             */
/*                                |      ,"not-canine") as animal   \       |                                             */
/*                                |  from                           \       |                                             */
/*                                |     have                        \       |                                             */
/*                                |                                         |                                             */
/*                                |                                         |                                             */
/*                                | PYTHON SQL CASE                         |                                             */
/*                                |                                         |                                             */
/*                                | select                                  |                                             */
/*                                |    case                                 |                                             */
/*                                |       when animal="dog" then "canine"   |                                             */
/*                                |       else "not-canine"                 |                                             */
/*                                |    end as animal                        |                                             */
/*                                | from                                    |                                             */
/*                                |    have                                 |                                             */
/*                                |                                         |                                             */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/





































































        INPUT

  options validvarname=upcase;
  libname sd1 "d:/sd1";
  data sd1.have;
    input animal$;
  cards4;
  cow
  dog
  trout
  salmon
  ;;;;
  run;quit;










I think np.select should be avoided for two reasons

stack overflow python
https://stackoverflow.com/questions/79186037/what-is-the-pandas-version-of-np-select

        INPUT                          PROCESS


options validvarname=upcase;    SAS SQL IIC                                   ANIMAL
libname sd1 "d:/sd1";
data sd1.have;                  select                                    not-canine
  input animal$;                   ifc(animal='dog'                           canine
cards4;                               ,'canine'                           not-canine
cow                                   ,'not-canine') as animal            not-canine
dog                             from
trout                              sd1.have
salmon
;;;;                            SAS SQL CASE
run;quit;
                                select
SD1.HAVE total obs=4               case
                                      when animal='dog' then 'canine'
  ANIMAL                              else 'not-canine'
                                   end as animal
  cow                           from
  dog                              sd1.have
  trout
  salmon                        --------------------------------------

                                R SQL IIF

                                select
                                   iif(animal='dog'
                                    ,'canine'
                                    ,'not-canine') as animal
                                from
                                   have



                                R SQL CASE (SAME IN SAS R AND PYTHON)

                                select
                                   case
                                      when animal='dog' then 'canine'
                                      else 'not-canine'
                                   end as animal
                                from
                                   have

                                ------------------------------------------

                                PYTHON SQL IIF

                                 select                         \
                                    iif(animal="dog"            \
                                     ,"canine"                  \
                                     ,"not-canine") as animal   \
                                 from                           \
                                    have                        \


                                PYTHON SQL CASE

                                select
                                   case
                                      when animal="dog" then "canine"
                                      else "not-canine"
                                   end as animal
                                from
                                   have




















proc datasets lib=sd1 nolist nodetails;
 delete pywant;
run;quit;

%utl_pybeginx;
parmcards4;
exec(open('c:/oto/fn_python.py').read())
have,meta = ps.read_sas7bdat('d:/sd1/have.sas7bdat')
print(have)
want=pdsql('''                   \
  select                         \
     iif(animal="dog"            \
      ,"canine"                  \
      ,"not-canine") as animal   \
  from                           \
     have                        \
   ''');
print(want)
fn_tosas9x(want,outlib='d:/sd1/',outdsn='pywant',timeest=3);
;;;;
%utl_pyendx;

proc print data=sd1.pywant;
run;quit;





          ;;;;%end;%mend;/*'*/ *);*};*];*/;/*"*/;run;quit;%end;end;run;endcomp;%utlfix;























%utl_pybeginx;
parmcards4;
exec(open('c:/oto/fn_python.py').read());
have,meta = ps.read_sas7bdat('d:/sd1/have.sas7bdat');

print(df)
;;;;
%utl_pyendx;


%utl_rbeginx;
parmcards4;
library(haven)
library(sqldf)
source("c:/oto/fn_tosas9x.R")
have<-read_sas("d:/sd1/have.sas7bdat")
want<-sqldf("
  select
     iif(animal='dog'
      ,'canine'
      ,'not-canine') as animal
  from
     have
  ")
print(want)
fn_tosas9x(
      inp    = have
     ,outlib ="d:/sd1/"
     ,outdsn ="want"
     )
;;;;
%utl_rendx;


%utl_rbeginx;
parmcards4;
library(haven)
library(sqldf)
source("c:/oto/fn_tosas9x.R")
have<-read_sas("d:/sd1/have.sas7bdat")
want<-sqldf("
  select
     case
        when animal='dog' then 'canine'
        else 'not-canine'
     end as animal
  from
     have
  ")
print(want)
fn_tosas9x(
      inp    = have
     ,outlib ="d:/sd1/"
     ,outdsn ="want"
     )
;;;;
%utl_rendx;






proc sql;
  create
     table want as
  select
     ifc(animal='dog'
        ,'canine'
        ,'not-canine')
as animal
  from
     sd1.have
;quit;

proc sql;
  create
     table want as
  select
     case
        when animal='dog' then 'canine'
        else 'not-canine'
     end as animal
  from
     sd1.have
;quit;
































options validvarname=upcase;
libname sd1 "d:/sd1";
data sd1.have;

             ;;;;%end;%mend;/*'*/ *);*};*];*/;/*"*/;run;quit;%end;end;run;endcomp;%utlfix;

SELECT IIF(condition, result_if_true, result_if_false)



np.select will force a type change to have an homogeneous array,
case_when will allow to create an object column keeping the original type


df['select'] = np.select([df['animal'].eq('dog'), df['animal'].eq('trout')],
                         [1, 'B'], -1
                        )









%utl_rbeginx;
parmcards4;
library(haven)
library(sqldf)
source("c:/oto/fn_tosas9x.R")
have<-read_sas("d:/sd1/have.sas7bdat")
want<-sqldf("
  select
     iif(animal='dog','canine','not-canine') as animal
  from
     have
  ")
print(want)
fn_tosas9x(
      inp    = have
     ,outlib ="d:/sd1/"
     ,outdsn ="want"
     )
;;;;
%utl_rendx;













import pandas as pd
import datetime

my_df = pd.DataFrame({'col1': ['a', 'a', 'a', 'a', 'b', 'b', 'b'],
                      'col2': [2, 2, 3, 2, 5, 5, 5],
                      'col3': [datetime.date(2023, 2, 1),
                               datetime.date(2023, 3, 1),
                               datetime.date(2023, 5, 1),
                               datetime.date(2023, 4, 1),
                               datetime.date(2023, 3, 1),
                               datetime.date(2023, 2, 1),
                               datetime.date(2023, 4, 1)]})

my_df['col2_change'] = (
    my_df.sort_values(by='col3')
    .groupby('col1')['col2']
    .transform(lambda x: x != x.shift(1))
)

print(my_df)



import pandas as pd
import datetime

my_df = pd.DataFrame({'col1': ['a', 'a', 'a', 'a', 'b', 'b', 'b'],
                      'col2': [2, 2, 3, 2, 5, 5, 5],
                      'col3': [datetime.date(2023, 2, 1),
                               datetime.date(2023, 3, 1),
                               datetime.date(2023, 5, 1),
                               datetime.date(2023, 4, 1),
                               datetime.date(2023, 3, 1),
                               datetime.date(2023, 2, 1),
                               datetime.date(2023, 4, 1)]})

my_df['col2_change'] = (
    my_df.sort_values(by='col3')
    .groupby('col1')['col2']
    .transform(lambda x: x != x.shift(1))
)

print(my_df)



proc datasets lib=sd1 nolist nodetails;
 delete pywant;
run;quit;

%utl_pybeginx;
parmcards4;
exec(open('c:/oto/fn_python.py').read());
have,meta = ps.read_sas7bdat('d:/sd1/have.sas7bdat');
df = pd.DataFrame([['cow'], ['dog'], ['trout'], ['salmon']], columns=['animal'])
print(df)
;;;;
%utl_pyendx;


number letter
1      a       1
.      b       2
2      a       3
.      b       4
               y
number color
1      red    10
.      blue   20
2      red    30











import pandas as pd
import datetime
my_df = pd.DataFrame({'col1': ['a', 'a', 'a', 'a', 'b', 'b', 'b'],
                      'col2': [2, 2, 3, 2, 5, 5, 5],
                      'col3': [datetime.date(2023, 2, 1),
                               datetime.date(2023, 3, 1),
                               datetime.date(2023, 5, 1),
                               datetime.date(2023, 4, 1),
                               datetime.date(2023, 3, 1),
                               datetime.date(2023, 2, 1),
                               datetime.date(2023, 4, 1)]})
my_df['col2_change'] = (
    my_df.sort_values(by='col3')
    .groupby('col1')['col2']
    .transform(lambda x: x != x.shift(1))
)

print(my_df)
fn_tosas9x(my_df,outlib='d:/sd1/',outdsn='pywant',timeest=3);
;;;;
%utl_pyendx;

proc print data=sd1.pywant;
run;quit;


user:rogerjdeangelis "outer" in:file filename:README.md

"outer join" in:file filename:README.md


  col1  col2        col3
0    a     2  2023-02-01
1    a     2  2023-03-01
2    a     3  2023-05-01
3    a     2  2023-04-01
4    b     5  2023-03-01
5    b     5  2023-02-01
6    b     5  2023-04-01



https://stackoverflow.com/questions/79186367/how-to-outer-merge-dataframes-with-multiindexes-without-dropping-indexes










want=pdsql('''
  select
     l.date
    ,r.code
    ,r.startdate
    ,r.enddate
  from
     trans as l left join master as r
  on
     l.date between r.startdate and r.enddate
  order
     by l.date
   ''');
print(want);
fn_tosas9x(want,outlib='d:/sd1/',outdsn='pywant',timeest=3);
;;;;
%utl_pyendx;

proc print data=sd1.pywant;
run;quit;



































How to add static prefix to select column names

sas communities
https://communities.sas.com/t5/SAS-Programming/how-to-add-static-prefix-to-select-column-names/m-p/950518#M371702

Where you can find the macros
macros
https://tinyurl.com/y9nfugth
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories


INPUT
=====

data have;
input _001 - _004;
cards4;
1 2 3 4
;;;;
run;quit;

Obs    _001    _002    _003    _004

 1       1       2       3       4

PROCESS
=======

%array(_old,values=%utl_varlist(have,keep=_:)) ;

Proc datasets lib=work;
  modify have;
  rename %do_over(_old,phrase=%str(?=mean?) );
run;quit;

OUTPUT
======

 MEAN_001    MEAN_002    MEAN_003    MEAN_004

     1           2           3           4

WHAT IS GOING ON
================

CREATE MACRO ARRAY _OLD and LOOP OVER IT

%put &=_old1 ; * _OLD1=_001
%put &=_old2 ; * _OLD2=_002
%put &=_old3 ; * _OLD3=_003
%put &=_old4 ; * _OLD4=_004

%put &=_oldn;  * _OLDN=4


Related repos
https://github.com/rogerjdeangelis/utl_rename_variables_using_coordinated_lists_renamel_macro
https://github.com/rogerjdeangelis/utl_rename_coordinated_lists_of_variables
https://github.com/rogerjdeangelis/utl-dynamically-rename-variables-without-knowing-the-number-of-variables-or-the-variable-full-name
https://github.com/rogerjdeangelis/utl-rename-all-variables-into-subscripted-variable-like-y1-y10
https://github.com/rogerjdeangelis/utl-rename-all-variables-starting-with-the-same-preffix-to-a-different-prefix
https://github.com/rogerjdeangelis/utl-rename-five-hundred-variables
https://github.com/rogerjdeangelis/utl-rename-variables-with-similar-names
https://github.com/rogerjdeangelis/utl-rename-variables-with-the-same-prefix-dosubl-varlist
https://github.com/rogerjdeangelis/utl-transpose-and-rename-variables-using-variable-labels-and-class-variables

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
