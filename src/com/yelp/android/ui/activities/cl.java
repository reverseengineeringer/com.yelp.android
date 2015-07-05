package com.yelp.android.ui.activities;

import android.content.Intent;
import android.content.res.Resources;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.di;
import com.yelp.android.ui.dialogs.bn;

class cl
  implements di
{
  cl(ActivityLogin paramActivityLogin) {}
  
  public void a(boolean paramBoolean, YelpException paramYelpException)
  {
    ActivityLogin.c(a).dismiss();
    if (paramBoolean)
    {
      AppData.a(EventIri.LogInSuccess);
      if (a.getIntent().getBooleanExtra("com.yelp.android.ui.ActivityLogin.showSuccessDlgOnCompletion", false))
      {
        a.showDialog(300);
        return;
      }
      ActivityLogin.d(a);
      return;
    }
    if ((paramYelpException instanceof ApiException))
    {
      paramYelpException = (ApiException)paramYelpException;
      if (paramYelpException.getResultCode() == 10)
      {
        ActivityLogin.a(a, paramYelpException.getMessage(a));
        a.showDialog(2131165220);
        return;
      }
      if (paramYelpException.getResultCode() == 11)
      {
        a.showDialog(2131165202);
        return;
      }
      a.showInfoDialog(a.getString(2131166030), paramYelpException.getMessage(a));
      return;
    }
    a.showInfoDialog(a.getResources().getString(2131166030), paramYelpException.getMessage(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */