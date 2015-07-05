package com.yelp.android.ui.activities.reviews;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

class bc
  implements m<ArrayList<ReviewSuggestion>>
{
  bc(ReviewSuggestionsPageFragment paramReviewSuggestionsPageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<ReviewSuggestion> paramArrayList)
  {
    ReviewSuggestionsPageFragment.e(a);
    ReviewSuggestionsPageFragment.a(a, paramArrayList);
    if (ReviewSuggestionsPageFragment.f(a)) {
      ReviewSuggestionsPageFragment.g(a);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ReviewSuggestionsPageFragment.d(a);
    ReviewSuggestionsPageFragment.a(a, ErrorType.getTypeFromException(paramYelpException));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */