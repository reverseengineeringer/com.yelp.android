package com.yelp.android.ui.activities;

import android.support.v4.view.ViewPager.h;
import android.view.View;
import android.widget.ImageView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.util.av;

class ActivitySplashLogin$5
  extends ViewPager.h
{
  ActivitySplashLogin$5(ActivitySplashLogin paramActivitySplashLogin) {}
  
  public void b(int paramInt)
  {
    AppData.a(ActivitySplashLogin.b(a)[paramInt], a.getParametersForIri(ActivitySplashLogin.b(a)[paramInt]));
    View localView1 = a.findViewById(2131690430);
    View localView2 = a.findViewById(2131690429);
    View localView3 = a.findViewById(2131689701);
    View localView4 = a.findViewById(2131690433);
    switch (paramInt)
    {
    }
    for (;;)
    {
      ((ImageView)ActivitySplashLogin.c(a)[ActivitySplashLogin.d(a).d()]).setImageResource(2130838067);
      ((ImageView)ActivitySplashLogin.c(a)[paramInt]).setImageResource(2130838069);
      ActivitySplashLogin.d(a).e(paramInt);
      return;
      if (localView1.getVisibility() == 0)
      {
        av.a(localView2, av.c);
        av.a(localView1, av.c);
        av.c(localView3, av.a);
        av.c(localView4, av.a);
        continue;
        av.c(localView1, av.a);
        av.c(localView2, av.a);
        av.a(localView4, av.c);
        av.a(localView3, av.c);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivitySplashLogin.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */