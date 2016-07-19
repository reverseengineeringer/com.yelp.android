package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import java.util.HashMap;
import java.util.Map;

class ActivityCreateAccount$3
  implements View.OnFocusChangeListener
{
  ActivityCreateAccount$3(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      HashMap localHashMap = new HashMap();
      if (paramView == ActivityCreateAccount.i(a)) {
        localHashMap.put("name", "firstname");
      }
      if (paramView == ActivityCreateAccount.j(a)) {
        localHashMap.put("name", "lastname");
      }
      if (paramView == ActivityCreateAccount.k(a)) {
        localHashMap.put("name", "password");
      }
      AppData.a(EventIri.SignUpFormInputFocused, localHashMap);
      ActivityCreateAccount.l(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCreateAccount.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */