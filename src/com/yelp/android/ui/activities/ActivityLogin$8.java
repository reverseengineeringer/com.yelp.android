package com.yelp.android.ui.activities;

import android.content.res.Resources;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co.a;
import com.yelp.android.ui.dialogs.e;

class ActivityLogin$8
  implements co.a
{
  ActivityLogin$8(ActivityLogin paramActivityLogin) {}
  
  public void a(YelpException paramYelpException)
  {
    ActivityLogin.d(a).dismiss();
    if (paramYelpException == null)
    {
      AppData.a(EventIri.LogInSuccess);
      ActivityLogin.a(a, false);
      if (ActivityLogin.e(a)) {
        ActivityLogin.f(a);
      }
    }
    for (;;)
    {
      return;
      ActivityLogin.c(a);
      return;
      if ((paramYelpException instanceof ApiException))
      {
        paramYelpException = (ApiException)paramYelpException;
        if (paramYelpException.getResultCode() == 10)
        {
          AppData.a(EventIri.LogInInvalidCredentials);
          ActivityLogin.a(a, paramYelpException.getMessage(a));
          a.showDialog(2131165356);
        }
      }
      while (ActivityLogin.h(a))
      {
        ActivityLogin.i(a);
        return;
        if (paramYelpException.getResultCode() == 11)
        {
          ActivityLogin.g(a);
        }
        else
        {
          a.showInfoDialog(a.getString(2131166090), paramYelpException.getMessage(a));
          continue;
          a.showInfoDialog(a.getResources().getString(2131166090), paramYelpException.getMessage(a));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityLogin.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */