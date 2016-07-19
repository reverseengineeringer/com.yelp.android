package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.webrequests.em;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Tip;

class ActivityFirstAwards$7
  implements d.c
{
  ActivityFirstAwards$7(ActivityFirstAwards paramActivityFirstAwards) {}
  
  public void a(Tip paramTip)
  {
    ActivityFirstAwards localActivityFirstAwards = a;
    String str = paramTip.a();
    if (!paramTip.g().c()) {}
    for (boolean bool = true;; bool = false)
    {
      ActivityFirstAwards.a(localActivityFirstAwards, new em(str, bool, ActivityFirstAwards.c(a)));
      ActivityFirstAwards.d(a).f(new Void[0]);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityFirstAwards.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */