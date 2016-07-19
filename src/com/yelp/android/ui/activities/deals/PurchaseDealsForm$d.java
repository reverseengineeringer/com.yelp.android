package com.yelp.android.ui.activities.deals;

import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.serializable.YelpDealOption;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.support.b;
import java.util.TreeMap;

class PurchaseDealsForm$d
  implements ApiRequest.b<YelpBusiness>
{
  private final PurchaseDealsForm b;
  
  public PurchaseDealsForm$d(PurchaseDealsForm paramPurchaseDealsForm1, PurchaseDealsForm paramPurchaseDealsForm2)
  {
    b = paramPurchaseDealsForm2;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, YelpBusiness paramYelpBusiness)
  {
    PurchaseDealsForm.a(a, false);
    paramApiRequest = new TreeMap();
    paramApiRequest.put("deal_id", PurchaseDealsForm.c(b).x());
    paramApiRequest.put("deal_option_id", PurchaseDealsForm.g(b).e());
    paramApiRequest.put("quantity", String.valueOf(PurchaseDealsForm.a(b).getQuantity()));
    AppData.b().k().a(EventIri.DealPurchased, paramApiRequest);
    PurchaseDealsForm.h(a);
    paramApiRequest = ActivityBusinessPage.b(b, paramYelpBusiness);
    paramApiRequest.putExtra("extra.deal_purchased", PurchaseDealsForm.c(b));
    paramApiRequest.addFlags(67108864);
    b.startActivity(paramApiRequest);
    b.finish();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    PurchaseDealsForm.a(a, false);
    b.getHelper().h();
    if (PurchaseDealsForm.a(b, paramYelpException)) {
      return;
    }
    b.a = paramYelpException.getMessage(b);
    if (((paramYelpException instanceof ApiException)) && (((ApiException)paramYelpException).getResultCode() == 1202)) {
      b.showDialog(308);
    }
    for (;;)
    {
      PurchaseDealsForm.e(a);
      PurchaseDealsForm.f(a);
      return;
      b.showDialog(309);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.PurchaseDealsForm.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */