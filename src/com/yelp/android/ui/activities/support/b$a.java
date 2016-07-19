package com.yelp.android.ui.activities.support;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.yelp.android.appdata.webrequests.ApiRequest;

class b$a
  implements DialogInterface.OnCancelListener
{
  private ApiRequest<?, ?, ?> a;
  private b.b b;
  
  public b$a(ApiRequest<?, ?, ?> paramApiRequest, b.b paramb)
  {
    a = paramApiRequest;
    b = paramb;
  }
  
  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (a != null) {
      a.a(true);
    }
    if (b != null) {
      b.a(a);
    }
    b = null;
    a = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */