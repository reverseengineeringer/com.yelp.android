package com.yelp.android.ui.activities.events;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.Event.SubscriptionStatus;

class ao
  implements View.OnClickListener
{
  ao(al paramal) {}
  
  public void onClick(View paramView)
  {
    Event.SubscriptionStatus localSubscriptionStatus = Event.SubscriptionStatus.SoundsCool;
    if (paramView.getId() == 2131493843) {
      localSubscriptionStatus = Event.SubscriptionStatus.ImIn;
    }
    a.a(localSubscriptionStatus);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */