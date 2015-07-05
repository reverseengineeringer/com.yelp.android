package com.yelp.android.ui.activities.reviews;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

class bd
  extends j<ArrayList<YelpBusiness>>
{
  bd(ReviewSuggestionsPageFragment paramReviewSuggestionsPageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<YelpBusiness> paramArrayList)
  {
    ReviewSuggestionsPageFragment.e(a);
    ReviewSuggestionsPageFragment.b(a, paramArrayList);
    if (ReviewSuggestionsPageFragment.f(a)) {
      ReviewSuggestionsPageFragment.g(a);
    }
  }
  
  public boolean a()
  {
    ReviewSuggestionsPageFragment.d(a);
    ReviewSuggestionsPageFragment.a(a, ErrorType.NO_LOCATION);
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ReviewSuggestionsPageFragment.d(a);
    ReviewSuggestionsPageFragment.a(a, ErrorType.getTypeFromException(paramYelpException));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */