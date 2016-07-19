package com.yelp.android.ui.activities.mutatebiz;

import android.view.View;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.BusinessAttributes;

class ChangeBusinessAttributes$9
  implements ApiRequest.b<BusinessAttributes>
{
  ChangeBusinessAttributes$9(ChangeBusinessAttributes paramChangeBusinessAttributes) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, BusinessAttributes paramBusinessAttributes)
  {
    if (a.q != null)
    {
      a.d = "";
      a.e = "";
      a.f = "";
      paramApiRequest = a.h();
      a.a(2131689684, paramApiRequest);
    }
    a.q = paramBusinessAttributes;
    a.f();
    a.disableLoading();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.findViewById(2131689680).setVisibility(8);
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.ChangeBusinessAttributes.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */