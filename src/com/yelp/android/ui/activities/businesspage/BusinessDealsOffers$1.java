package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpDeal;

 enum BusinessDealsOffers$1
{
  BusinessDealsOffers$1(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public String getSubtitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return null;
  }
  
  public CharSequence getTitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return paramYelpBusiness.getDeal().getTitle();
  }
  
  public int getTitleColor()
  {
    return 2131361931;
  }
  
  public boolean shouldShow(YelpBusiness paramYelpBusiness)
  {
    return paramYelpBusiness.getDeal() != null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.BusinessDealsOffers.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */