package com.yelp.android.appdata;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityCheckIn;

 enum BusinessContributionType$1
{
  BusinessContributionType$1(int paramInt1, String paramString1)
  {
    super(paramString, paramInt, paramInt1, paramString1, null);
  }
  
  public Intent getAddIntent(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return ActivityCheckIn.b(paramContext, paramYelpBusiness);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.BusinessContributionType.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */