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

