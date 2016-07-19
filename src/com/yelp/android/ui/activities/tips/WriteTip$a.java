package com.yelp.android.ui.activities.tips;

import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.ObjectDirtyEvent;

class WriteTip$a
  implements c.a
{
  private WriteTip$a(WriteTip paramWriteTip) {}
  
  private void a(int paramInt)
  {
    a.hideLoadingDialog();
    as.a(paramInt, 0);
    a.finish();
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    paramApiRequest = a.getIntent();
    paramApiRequest.putExtra("tip_deleted", true);
    a.setResult(-1, paramApiRequest);
    a(2131166691);
    new ObjectDirtyEvent(WriteTip.b(a), "com.yelp.android.tips.delete").a(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    WriteTip.e(a).setEnabled(true);
    paramApiRequest = new Bundle();
    paramApiRequest.putString("bundle message for dialogs", paramYelpException.getMessage(a));
    a.showDialog(300, paramApiRequest);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.WriteTip.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */