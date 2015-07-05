package com.yelp.android.ui.activities.support;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.yelp.android.appdata.webrequests.ApiRequest;

class k
  implements DialogInterface.OnCancelListener
{
  private ApiRequest<?, ?, ?> a;
  private l b;
  
  public k(ApiRequest<?, ?, ?> paramApiRequest, l paraml)
  {
    a = paramApiRequest;
    b = paraml;
  }
  
  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (a != null) {
      a.cancel(true);
    }
    if (b != null) {
      b.a(a);
    }
    b = null;
    a = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */