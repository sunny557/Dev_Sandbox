public class JobDetails {
	public string jobid;
    public jobConsolidate jcid;
    
    public class jobConsolidate{
        public JobSummary c_js;
        public JobLocation c_jl;
        public otherDetails c_od;
    } 
    public class JobSummary {
        public string jobDescription;
        public string jobgoal;
    }
    
    public class JobLocation{
        public string jobcity;
        public string jobcountry;
        public string jobregion;
    }
    
    public class otherDetails{
        public string jobfilleddate;
        public integer numberofpositioins;
        public string industry;
    }
}