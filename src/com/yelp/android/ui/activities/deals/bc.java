package com.yelp.android.ui.activities.deals;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cq;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.android.ui.activities.account.CreditCardSelector;
import com.yelp.android.ui.util.cr;
import java.util.ArrayList;

class bc
  implements m<cq>
{
  private PurchaseDealsForm a;
  
  public bc(PurchaseDealsForm paramPurchaseDealsForm)
  {
    a = paramPurchaseDealsForm;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, cq paramcq)
  {
    a.hideLoadingDialog();
    PurchaseDealsForm.a(a, paramcq.a());
    if (paramcq.b().isEmpty())
    {
      a.startActivityForResult(CreditCardSelector.a(a), 1036);
      return;
    }
    PurchaseDealsForm.a(a, paramcq.b());
    PurchaseDealsForm.a(a, (PaymentMethod)paramcq.b().get(0));
    if (PurchaseDealsForm.n(a)) {
      PurchaseDealsForm.b(a);
    }
    a = null;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    if (PurchaseDealsForm.a(a, paramYelpException)) {
      return;
    }
    cr.a(paramYelpException.getMessage(a), 0);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */