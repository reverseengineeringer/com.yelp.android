package com.yelp.android.analytics;

import com.yelp.android.appdata.experiment.UfcNotificationExperiment;
import com.yelp.android.appdata.experiment.UfcNotificationExperiment.Cohort;
import com.yelp.android.appdata.experiment.e;

 enum GADimensions$6
{
  GADimensions$6(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public String getValue()
  {
    return ((UfcNotificationExperiment.Cohort)e.h.b()).toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.GADimensions.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */