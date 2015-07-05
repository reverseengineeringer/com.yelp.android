package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import com.yelp.android.serializable.Reservation.Provider;
import com.yelp.android.serializable.YelpBusiness;

 enum BusinessBasicInfo$3
{
  BusinessBasicInfo$3(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public String getSubtitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return null;
  }
  
  public CharSequence getTitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return paramContext.getString(2131166062);
  }
  
  public boolean shouldShow(YelpBusiness paramYelpBusiness)
  {
    return (paramYelpBusiness.getReservationProvider() != Reservation.Provider.NONE) && (paramYelpBusiness.getReservation() == null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.BusinessBasicInfo.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */