package com.yelp.android.ui.activities.events;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.SubscriptionStatus;

class ap
  implements AdapterView.OnItemSelectedListener
{
  ap(al paramal) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (Event.SubscriptionStatus)paramAdapterView.getItemAtPosition(paramInt);
    if (paramAdapterView != al.b(a).getSubscriptionStatusEnum()) {
      a.a(paramAdapterView);
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */