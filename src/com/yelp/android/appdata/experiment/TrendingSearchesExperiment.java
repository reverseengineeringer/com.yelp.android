package com.yelp.android.appdata.experiment;

public class TrendingSearchesExperiment
  extends c<Cohort>
{
  public TrendingSearchesExperiment()
  {
    super("android_trending_searches", Cohort.class, Cohort.status_quo_no_trending_searches);
  }
  
  public static enum Cohort
  {
    status_quo_no_trending_searches,  status_quo_no_trending_searches_copy,  trending_searches_nearby_list_enabled;
    
    private Cohort() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.experiment.TrendingSearchesExperiment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */