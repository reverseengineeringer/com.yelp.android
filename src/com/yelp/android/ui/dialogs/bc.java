package com.yelp.android.ui.dialogs;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;

class bc
  implements com.yelp.android.av.i
{
  bc(PrivacyPolicyDialog paramPrivacyPolicyDialog) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    AppData.b().f().D();
    PrivacyPolicyDialog.e(a).dismiss();
    a.dismiss();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    PrivacyPolicyDialog.e(a).dismiss();
    PrivacyPolicyDialog.f(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */