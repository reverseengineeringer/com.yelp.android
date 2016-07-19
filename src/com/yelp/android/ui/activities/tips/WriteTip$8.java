package com.yelp.android.ui.activities.tips;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.ui.activities.ActivityRetryTipShare;
import com.yelp.android.util.p;
import java.util.List;

class WriteTip$8
  implements View.OnClickListener
{
  WriteTip$8(WriteTip paramWriteTip) {}
  
  public void onClick(View paramView)
  {
    paramView = a;
    AppData.a(EventIri.TipSave, "source", WriteTip.f(a));
    if ((WriteTip.d(a) != null) && (WriteTip.d(a).u())) {
      return;
    }
    int i = a.getResources().getInteger(2131492907);
    Object localObject;
    if (TextUtils.isEmpty(String.valueOf(WriteTip.e(a).getText()).trim()))
    {
      localObject = new Bundle();
      if (paramView.a()) {}
      for (i = 2131166344;; i = 2131166264)
      {
        ((Bundle)localObject).putString("bundle message for dialogs", paramView.getString(i));
        a.showDialog(300, (Bundle)localObject);
        return;
      }
    }
    if (WriteTip.e(a).getText().length() > i)
    {
      localObject = new Bundle();
      ((Bundle)localObject).putString("bundle message for dialogs", paramView.getString(2131166703, new Object[] { Integer.valueOf(i) }));
      a.showDialog(300, (Bundle)localObject);
      return;
    }
    switch (WriteTip.2.a[WriteTip.g(a).ordinal()])
    {
    default: 
      return;
    case 1: 
      localObject = p.a(null, WriteTip.h(paramView), WriteTip.i(paramView));
      localObject = p.a(paramView, AppData.b().q().p(), (List)localObject, ActivityRetryTipShare.class);
      if (localObject != null)
      {
        a.startActivityForResult((Intent)localObject, 102);
        return;
      }
      break;
    case 2: 
      paramView.b();
      return;
    }
    paramView.b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.WriteTip.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */