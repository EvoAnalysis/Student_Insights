libname studata "/home/UserName/studentinsights";

/* === Clean Enrollment === */
data studata.clean_enrollment;
    set studata.enrollment;
    /* Trim strings */
    Gender = strip(Gender);
    Race = strip(Race);
    Age_Group = strip(Age_Group);
    Residency = strip(Residency);
    Distance_Ed_Status = strip(Distance_Ed_Status);
run;

/* === Clean Completions === */
data studata.clean_completions;
    set studata.completions;
    Program = strip(Program);
    Gender = strip(Gender);
    Race = strip(Race);
run;

/* === Clean Retention === */
data studata.clean_retention;
    set studata.retention;
    Value_Type = strip(Value_Type);
    Race = strip(Race);
    Residency = strip(Residency);
run;

/* === Clean Staff === */
data studata.clean_staff;
    set studata.staff;
    Department = strip(Department);
    Role = strip(Role);
    Gender = strip(Gender);
run;
