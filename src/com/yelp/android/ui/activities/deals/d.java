package com.yelp.android.ui.activities.deals;

import android.util.SparseArray;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.bg;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

class d
  extends j<bg>
{
  d(ActivityDealDetail paramActivityDealDetail) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, bg parambg)
  {
    if ((ActivityDealDetail.a(a) != null) && (!parambg.b().contains(ActivityDealDetail.a(a)))) {
      parambg.b().add(0, ActivityDealDetail.a(a));
    }
    ActivityDealDetail.a(a, parambg.b());
    ActivityDealDetail.a(a, parambg.a());
    ActivityDealDetail.e(a);
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    da).get(2131493154)).a = ErrorType.getTypeFromException(paramYelpException).buildAdapter(a);
    da).get(2131493154)).b = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */