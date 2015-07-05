package com.yelp.android.ui.activities;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.yelp.android.appdata.ap;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.fu;

class fj
  implements View.OnClickListener
{
  fj(fi paramfi, ap paramap, PendingIntent paramPendingIntent) {}
  
  public void onClick(View paramView)
  {
    c.dismiss();
    paramView = a.l().getRequestId();
    String str = String.valueOf(fi.a(c).getText());
    new fu(paramView, a.a(), str).execute(new Void[0]);
    try
    {
      if (b != null) {
        b.send(-1);
      }
      return;
    }
    catch (PendingIntent.CanceledException paramView) {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */