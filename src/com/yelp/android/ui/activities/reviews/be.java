package com.yelp.android.ui.activities.reviews;

import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.av.a;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.Map;

class be
  extends j<SearchRequest.SearchResponse>
{
  be(ReviewSuggestionsPageFragment paramReviewSuggestionsPageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, SearchRequest.SearchResponse paramSearchResponse)
  {
    ReviewSuggestionsPageFragment.b(a, new ArrayList(BusinessSearchResult.getBusinessesFromBusinessSearchResult(paramSearchResponse.getBusinessSearchResults())));
    ReviewSuggestionsPageFragment.b(a, ErrorType.NO_ERROR);
    paramApiRequest = IriSource.AddReviewPage.getMapWithParameter();
    paramApiRequest.put("term", ReviewSuggestionsPageFragment.h(a));
    if ((paramSearchResponse.getOffset() == 0) && (ReviewSuggestionsPageFragment.i(a) != null)) {
      paramApiRequest.put("button", ReviewSuggestionsPageFragment.i(a));
    }
    AppData.b().k().a(new g(EventIri.Search, paramSearchResponse.getRequestId(), paramApiRequest));
    ReviewSuggestionsPageFragment.g(a);
  }
  
  public boolean a()
  {
    a.a(ErrorType.NO_LOCATION, a);
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a(ErrorType.getTypeFromException(paramYelpException), a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */