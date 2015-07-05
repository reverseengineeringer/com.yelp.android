package com.yelp.android.appdata;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;

 enum BusinessContributionType$2
{
  BusinessContributionType$2(int paramInt1, String paramString1)
  {
    super(paramString, paramInt, paramInt1, paramString1, null);
  }
  
  public Intent getAddIntent(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return ActivityReviewWrite.a(paramContext, paramYelpBusiness, ReviewSource.SearchAddReviewBusiness);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.BusinessContributionType.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */