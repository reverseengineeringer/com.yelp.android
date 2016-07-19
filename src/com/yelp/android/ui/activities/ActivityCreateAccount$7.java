package com.yelp.android.ui.activities;

import com.yelp.android.db.h;
import jp.line.android.sdk.api.b;
import jp.line.android.sdk.api.c;

class ActivityCreateAccount$7
  implements c<h>
{
  ActivityCreateAccount$7(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void a(b paramb)
  {
    switch (ActivityCreateAccount.24.a[paramb.b().ordinal()])
    {
    default: 
      return;
    }
    paramb = (h)paramb.c();
    a.runOnUiThread(new ActivityCreateAccount.7.1(this, paramb));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCreateAccount.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */