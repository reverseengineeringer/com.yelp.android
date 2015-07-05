package com.yelp.android.ui.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.i;
import com.yelp.android.av.a;

class di
  implements DialogInterface.OnClickListener
{
  di(dg paramdg) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    dg.b(a).e(true);
    AppData.b().k().a(EventIri.PrivacyPolicyOk, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */