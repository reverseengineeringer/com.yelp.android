package com.yelp.android.appdata.experiment;

public class PhotoAdsExperiment
  extends c<Cohort>
{
  public PhotoAdsExperiment()
  {
    super("ad.photo_ads_rollout_android_v2", Cohort.class, Cohort.status_quo);
  }
  
  public static enum Cohort
  {
    status_quo,  variant_01;
    
    private Cohort() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.experiment.PhotoAdsExperiment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */