package com.yelp.android.ui.activities.deals;

import android.util.SparseArray;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.List;

class e
  extends j<List<YelpBusinessReview>>
{
  e(ActivityDealDetail paramActivityDealDetail) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<YelpBusinessReview> paramList)
  {
    ActivityDealDetail.b(a, new ArrayList(paramList));
    ActivityDealDetail.f(a);
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    da).get(2131493153)).a = ErrorType.getTypeFromException(paramYelpException).buildAdapter(a);
    da).get(2131493153)).b = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */