package com.yelp.android.ui.activities.deals;

import android.util.SparseArray;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ax.a;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

class ActivityDealDetail$4
  extends k.b<ax.a>
{
  ActivityDealDetail$4(ActivityDealDetail paramActivityDealDetail) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ax.a parama)
  {
    if ((ActivityDealDetail.a(a) != null) && (!parama.b().contains(ActivityDealDetail.a(a)))) {
      parama.b().add(0, ActivityDealDetail.a(a));
    }
    ActivityDealDetail.a(a, parama.b());
    ActivityDealDetail.a(a, parama.a());
    ActivityDealDetail.e(a);
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    da).get(2131689825)).a = ErrorType.getTypeFromException(paramYelpException).buildAdapter(a);
    da).get(2131689825)).b = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityDealDetail.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */