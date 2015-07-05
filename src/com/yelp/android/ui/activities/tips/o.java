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
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.ui.activities.ActivityRetryTipShare;
import com.yelp.android.util.z;
import java.util.List;

class o
  implements View.OnClickListener
{
  o(WriteTip paramWriteTip) {}
  
  public void onClick(View paramView)
  {
    paramView = a;
    AppData.a(EventIri.TipSave);
    if ((WriteTip.d(a) != null) && (WriteTip.d(a).isFetching())) {
      return;
    }
    int i = a.getResources().getInteger(2131558435);
    Object localObject;
    if (TextUtils.isEmpty(String.valueOf(WriteTip.e(a).getText()).trim()))
    {
      localObject = new Bundle();
      if (paramView.a()) {}
      for (i = 2131166324;; i = 2131166208)
      {
        ((Bundle)localObject).putString("bundle message for dialogs", paramView.getString(i));
        a.showDialog(300, (Bundle)localObject);
        return;
      }
    }
    if (WriteTip.e(a).getText().length() > i)
    {
      localObject = new Bundle();
      ((Bundle)localObject).putString("bundle message for dialogs", paramView.getString(2131166725, new Object[] { Integer.valueOf(i) }));
      a.showDialog(300, (Bundle)localObject);
      return;
    }
    switch (i.a[WriteTip.f(a).ordinal()])
    {
    default: 
      return;
    case 1: 
      localObject = z.a(null, WriteTip.g(paramView), WriteTip.h(paramView));
      localObject = z.a(paramView, AppData.b().m().h(), (List)localObject, ActivityRetryTipShare.class);
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
 * Qualified Name:     com.yelp.android.ui.activities.tips.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */