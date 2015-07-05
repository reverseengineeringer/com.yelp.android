package com.yelp.android.serializable;

import android.content.Context;
import com.yelp.android.ui.activities.businesspage.cf;

class cl
  extends cf
{
  cl(ReservationSearchAction paramReservationSearchAction, SearchAction paramSearchAction)
  {
    super(paramSearchAction);
  }
  
  public int getIcon(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return 2130838302;
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
 * Qualified Name:     com.yelp.android.serializable.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */