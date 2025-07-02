/* Set library to point to the folder where we’ll save the datasets */
libname studata "/home/UserName/studentinsights";
%let path = /home/UserName;

/* Import Enrollment */
proc import datafile="&path/Enrollment.csv"
    out=studata.enrollment
    dbms=csv
    replace;
    guessingrows=MAX;
run;

/* Import Completions */
proc import datafile="&path/Completions.csv"
    out=studata.completions
    dbms=csv
    replace;
    guessingrows=MAX;
run;

/* Import Retention */
proc import datafile="&path/Retention.csv"
    out=studata.retention
    dbms=csv
    replace;
    guessingrows=MAX;
run;

/* Import Staff */
proc import datafile="&path/Staff.csv"
    out=studata.staff
    dbms=csv
    replace;
    guessingrows=MAX;
run;
