package com.yelp.android.ui.util;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.net.Uri;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.i;
import com.yelp.android.av.a;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import java.util.EnumSet;

class dh
  implements DialogInterface.OnClickListener
{
  dh(dg paramdg) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = Uri.parse(dg.a(a).getString(2131166365));
    dg.a(a).startActivity(WebViewActivity.getWebIntent(dg.a(a), paramDialogInterface, dg.a(a).getString(2131166361), ViewIri.Business, EnumSet.noneOf(WebViewActivity.Feature.class), false));
    dg.b(a).e(true);
    AppData.b().k().a(EventIri.PrivacyPolicyLearnMore, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */