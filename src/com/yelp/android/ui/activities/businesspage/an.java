package com.yelp.android.ui.activities.businesspage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.ReservationChangeEvent;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.ObjectDirtyEvent;

class an
  extends BroadcastReceiver
{
  an(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Object localObject = (ReservationChangeEvent)ObjectDirtyEvent.a(paramIntent);
    paramIntent = ((ReservationChangeEvent)localObject).getReservation();
    localObject = ((ReservationChangeEvent)localObject).getBusiness();
    ((YelpBusiness)localObject).setReservation(paramIntent);
    paramIntent = ActivityBusinessPage.b(paramContext, (YelpBusiness)localObject);
    paramIntent.addFlags(536870912);
    paramContext.startActivity(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */