package com.yelp.android.ui.activities.messaging;

import android.text.Editable;
import android.text.TextWatcher;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import java.util.Collections;

class ActivityMessageTheBusinessBulkCompose$3
  implements TextWatcher
{
  ActivityMessageTheBusinessBulkCompose$3(ActivityMessageTheBusinessBulkCompose paramActivityMessageTheBusinessBulkCompose) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (ActivityMessageTheBusinessBulkCompose.a(a))
    {
      ActivityMessageTheBusinessBulkCompose.a(a, false);
      AppData.a(EventIri.BusinessMessageTheBusinessWrite, Collections.singletonMap("source", "unclaimed_widget"));
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessageTheBusinessBulkCompose.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */