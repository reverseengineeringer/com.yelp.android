package com.yelp.android.ui.activities.messaging;

import android.text.Editable;
import android.text.TextWatcher;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ActivityMessageTheBusiness$1
  implements TextWatcher
{
  ActivityMessageTheBusiness$1(ActivityMessageTheBusiness paramActivityMessageTheBusiness) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (ActivityMessageTheBusiness.a(a))
    {
      ActivityMessageTheBusiness.a(a, false);
      AppData.a(EventIri.BusinessMessageTheBusinessWrite);
      if (ActivityMessageTheBusiness.b(a)) {
        AppData.a(EventIri.SearchRequestAQuoteWrite);
      }
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessageTheBusiness.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */