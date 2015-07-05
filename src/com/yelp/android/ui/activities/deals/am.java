package com.yelp.android.ui.activities.deals;

import android.view.View;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.Iterator;

class am
  implements m<ArrayList<PaymentMethod>>
{
  am(PurchaseDealsForm paramPurchaseDealsForm) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<PaymentMethod> paramArrayList)
  {
    PurchaseDealsForm.k(a).setVisibility(0);
    a.disableLoading();
    a.clearError();
    Iterator localIterator = paramArrayList.iterator();
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      paramApiRequest = (PaymentMethod)localIterator.next();
    } while (PurchaseDealsForm.m(a).contains(paramApiRequest));
    for (;;)
    {
      PurchaseDealsForm.a(a, paramArrayList);
      if (paramApiRequest != null)
      {
        PurchaseDealsForm.m(a).remove(paramApiRequest);
        PurchaseDealsForm.m(a).add(0, paramApiRequest);
        PurchaseDealsForm.a(a, paramApiRequest);
      }
      return;
      paramApiRequest = null;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    PurchaseDealsForm.k(a).setVisibility(8);
    paramApiRequest = ErrorType.getTypeFromException(paramYelpException);
    a.populateError(paramApiRequest, new an(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */