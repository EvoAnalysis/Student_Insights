libname studata "/home/UserName/studentinsights";

/* === Enrollment by Year and Residency === */
proc sql;
    create table studata.enrollment_by_year as
    select Year, Residency, sum(Headcount) as Total_Students
    from studata.clean_enrollment
    group by Year, Residency
    order by Year, Residency;
quit;

/* === Degree Completions by Program and Year === */
proc sql;
    create table studata.completions_by_program as
    select Year, Program, sum(Degrees_Awarded) as Total_Degrees
    from studata.clean_completions
    group by Year, Program
    order by Year, Program;
quit;

/* === Retention vs Graduation by Year === */
proc sql;
    create table studata.retention_summary as
    select Year, Value_Type, avg(Percentage) as Avg_Percentage format=percent8.2
    from studata.clean_retention
    group by Year, Value_Type
    order by Year, Value_Type;
quit;

/* === Staff Counts by Role and Year === */
proc sql;
    create table studata.staff_trend as
    select Year, Role, sum(Staff_Count) as Total_Staff
    from studata.clean_staff
    group by Year, Role
    order by Year, Role;
quit;