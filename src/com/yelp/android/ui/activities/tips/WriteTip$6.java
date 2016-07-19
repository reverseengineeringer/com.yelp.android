package com.yelp.android.ui.activities.tips;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.bd;
import com.yelp.android.serializable.Tip;

class WriteTip$6
  implements DialogInterface.OnClickListener
{
  WriteTip$6(WriteTip paramWriteTip) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.showLoadingDialog(2131166693);
    WriteTip.a(a, new bd(WriteTip.b(a).a(), WriteTip.c(a)));
    WriteTip.d(a).f(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.WriteTip.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */