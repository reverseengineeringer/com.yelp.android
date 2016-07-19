package com.yelp.android.ui.activities.deals;

import android.view.View;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.util.ErrorType;

class PurchaseDealsForm$2
  implements c.a
{
  PurchaseDealsForm$2(PurchaseDealsForm paramPurchaseDealsForm) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    if ((PurchaseDealsForm.i(a) == null) || (!PurchaseDealsForm.i(a).u()))
    {
      a.enableLoading();
      PurchaseDealsForm.a(a, new dc(PurchaseDealsForm.j(a)));
      PurchaseDealsForm.i(a).f(new Void[0]);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    PurchaseDealsForm.k(a).setVisibility(8);
    paramApiRequest = ErrorType.getTypeFromException(paramYelpException);
    a.populateError(paramApiRequest, new PanelError.a()
    {
      public void q_()
      {
        PurchaseDealsForm.l(a);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.PurchaseDealsForm.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */