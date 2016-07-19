package com.yelp.android.ui.activities.deals;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cf.a;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.android.ui.activities.account.CreditCardSelector;
import com.yelp.android.ui.util.as;
import java.util.ArrayList;

class PurchaseDealsForm$c
  implements ApiRequest.b<cf.a>
{
  private PurchaseDealsForm a;
  
  public PurchaseDealsForm$c(PurchaseDealsForm paramPurchaseDealsForm)
  {
    a = paramPurchaseDealsForm;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, cf.a parama)
  {
    a.hideLoadingDialog();
    PurchaseDealsForm.a(a, parama.a());
    if (parama.b().isEmpty())
    {
      a.startActivityForResult(CreditCardSelector.a(a), 1040);
      return;
    }
    PurchaseDealsForm.a(a, parama.b());
    PurchaseDealsForm.a(a, (PaymentMethod)parama.b().get(0));
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
    as.a(paramYelpException.getMessage(a), 0);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.PurchaseDealsForm.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */