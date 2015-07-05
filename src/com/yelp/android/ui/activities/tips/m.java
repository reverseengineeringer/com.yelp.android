package com.yelp.android.ui.activities.tips;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.bm;
import com.yelp.android.serializable.Tip;

class m
  implements DialogInterface.OnClickListener
{
  m(WriteTip paramWriteTip) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.showLoadingDialog(2131166714);
    WriteTip.a(a, new bm(WriteTip.b(a).getId(), WriteTip.c(a)));
    WriteTip.d(a).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */