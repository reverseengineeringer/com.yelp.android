package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.reservations.ReservationDetails;

class v
  implements View.OnClickListener
{
  v(t paramt, Context paramContext, YelpBusiness paramYelpBusiness) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(ReservationDetails.a(a, b));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */