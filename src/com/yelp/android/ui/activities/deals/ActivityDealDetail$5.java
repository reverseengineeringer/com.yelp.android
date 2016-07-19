package com.yelp.android.ui.activities.deals;

import android.util.SparseArray;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.List;

class ActivityDealDetail$5
  extends k.b<List<YelpBusinessReview>>
{
  ActivityDealDetail$5(ActivityDealDetail paramActivityDealDetail) {}
  
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
    da).get(2131689824)).a = ErrorType.getTypeFromException(paramYelpException).buildAdapter(a);
    da).get(2131689824)).b = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityDealDetail.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */