package com.yelp.android.ui.activities.deals;

import android.view.View;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ea;
import com.yelp.android.av.i;
import com.yelp.android.util.ErrorType;

class ak
  implements i
{
  ak(PurchaseDealsForm paramPurchaseDealsForm) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    if ((PurchaseDealsForm.i(a) == null) || (!PurchaseDealsForm.i(a).isFetching()))
    {
      a.enableLoading();
      PurchaseDealsForm.a(a, new ea(true, PurchaseDealsForm.j(a)));
      PurchaseDealsForm.i(a).execute(new Void[0]);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    PurchaseDealsForm.k(a).setVisibility(8);
    paramApiRequest = ErrorType.getTypeFromException(paramYelpException);
    a.populateError(paramApiRequest, new al(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */