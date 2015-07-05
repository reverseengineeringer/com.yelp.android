package com.yelp.android.ui.activities.profile;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import com.yelp.android.analytics.d;
import com.yelp.android.analytics.iris.EventIri;

class ab
  extends d
{
  ab(UserProfileView paramUserProfileView, EventIri paramEventIri, Intent paramIntent)
  {
    super(paramEventIri);
  }
  
  public void a(View paramView)
  {
    ((Activity)b.getContext()).startActivityForResult(a, 1001);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */