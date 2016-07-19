package com.yelp.android.appdata.experiment;

public class UndefinedCohortExperiment
  extends c<PlaceholderCohort>
{
  public UndefinedCohortExperiment(String paramString)
  {
    super(paramString, PlaceholderCohort.class, PlaceholderCohort.not_used);
  }
  
  public PlaceholderCohort a()
  {
    return PlaceholderCohort.not_used;
  }
  
  public static enum PlaceholderCohort
  {
    not_used;
    
    private PlaceholderCohort() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.experiment.UndefinedCohortExperiment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */