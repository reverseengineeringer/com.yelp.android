package com.yelp.android.ui.activities;

import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import jp.line.android.sdk.login.LineLoginFuture;
import jp.line.android.sdk.login.b;

class ActivityCreateAccount$9
  implements b
{
  ActivityCreateAccount$9(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void a(LineLoginFuture paramLineLoginFuture)
  {
    switch (ActivityCreateAccount.24.b[paramLineLoginFuture.d().ordinal()])
    {
    default: 
      AppData.a(EventIri.LineSignupCancel);
      ActivityCreateAccount.q(a);
      return;
    }
    ActivityCreateAccount.a(a, paramLineLoginFuture);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCreateAccount.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */