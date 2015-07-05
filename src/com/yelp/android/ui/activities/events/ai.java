package com.yelp.android.ui.activities.events;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.EventRsvp;

class ai
  implements View.OnClickListener
{
  ai(af paramaf) {}
  
  public void onClick(View paramView)
  {
    paramView = EventPartyPassFragment.a(af.b(a).getName(), af.b(a).getRsvp().getPartyPassImageUrl());
    af.a(a).getActivity().getSupportFragmentManager().beginTransaction().replace(2131493332, paramView).addToBackStack(null).commit();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */