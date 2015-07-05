package com.yelp.android.ui.activities.compliments;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;

class b
  implements View.OnClickListener
{
  b(a parama, Context paramContext, Compliment paramCompliment) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(ActivityUserProfile.a(a, b.getUserId()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */