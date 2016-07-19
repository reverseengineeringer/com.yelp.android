package com.yelp.android.ui.activities.compliments;

import android.widget.EditText;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.ui.activities.support.b.b;

class SendCompliment$1
  implements b.b
{
  SendCompliment$1(SendCompliment paramSendCompliment, EditText paramEditText) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest)
  {
    a.setEnabled(true);
    b.updateOptionsMenu();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.SendCompliment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */