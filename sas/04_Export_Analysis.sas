libname studata "/home/UserName/studentinsights";

/* === Export Enrollment Summary === */
proc export data=studata.enrollment_by_year
    outfile="/home/u64262403/enrollment_by_year.csv"
    dbms=csv
    replace;
run;

/* === Export Completions Summary === */
proc export data=studata.completions_by_program
    outfile="/home/u64262403/completions_by_program.csv"
    dbms=csv
    replace;
run;

/* === Export Retention Summary === */
proc export data=studata.retention_summary
    outfile="/home/u64262403/retention_summary.csv"
    dbms=csv
    replace;
run;

/* === Export Staff Summary === */
proc export data=studata.staff_trend
    outfile="/home/u64262403/staff_trend.csv"
    dbms=csv
    replace;
run;
