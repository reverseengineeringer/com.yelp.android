package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.StringUtils;

 enum BusinessDealsOffers$2
{
  BusinessDealsOffers$2(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public String getSubtitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramYelpBusiness = paramYelpBusiness.getCheckInOffer();
    if (!paramYelpBusiness.isStarted()) {
      return StringUtils.a(paramContext, 2131623945, paramYelpBusiness.getCheckInsRemaining());
    }
    return StringUtils.a(paramContext, 2131623943, paramYelpBusiness.getCheckInsRemaining());
  }
  
  public CharSequence getTitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return paramYelpBusiness.getCheckInOffer().getSpan();
  }
  
  public int getTitleColor()
  {
    return 2131361817;
  }
  
  public boolean shouldShow(YelpBusiness paramYelpBusiness)
  {
    paramYelpBusiness = paramYelpBusiness.getCheckInOffer();
    return (paramYelpBusiness != null) && (!paramYelpBusiness.isAwarded());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.BusinessDealsOffers.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */