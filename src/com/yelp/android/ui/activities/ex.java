package com.yelp.android.ui.activities;

import android.location.Location;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.av.a;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.util.ErrorType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class ex
  extends j<SearchRequest.SearchResponse>
{
  ex(ContributionSearchFragment paramContributionSearchFragment) {}
  
  public void a(Location paramLocation) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, SearchRequest.SearchResponse paramSearchResponse)
  {
    paramApiRequest = BusinessSearchResult.getBusinessesFromBusinessSearchResult(paramSearchResponse.getBusinessSearchResults());
    a.j();
    ContributionSearchFragment.a(a).a(paramApiRequest);
    ContributionSearchFragment.a(a).notifyDataSetChanged();
    a.c(paramApiRequest.size());
    paramApiRequest = new HashMap();
    if (ContributionSearchFragment.b(a) == BusinessContributionType.BUSINESS_PHOTO) {
      paramApiRequest.putAll(IriSource.AddPhotoPage.getMapWithParameter());
    }
    for (;;)
    {
      if ((paramSearchResponse.getOffset() == 0) && (ContributionSearchFragment.c(a) != null)) {
        paramApiRequest.put("button", ContributionSearchFragment.c(a));
      }
      paramApiRequest.put("term", ContributionSearchFragment.d(a));
      AppData.b().k().a(new g(EventIri.Search, paramSearchResponse.getRequestId(), paramApiRequest));
      if (ContributionSearchFragment.a(a).isEmpty()) {
        a.a(ErrorType.NO_RESULTS);
      }
      if (ContributionSearchFragment.a(a).getCount() == paramSearchResponse.getTotal()) {
        a.a(true);
      }
      return;
      if (ContributionSearchFragment.b(a) == BusinessContributionType.CHECK_IN) {
        paramApiRequest.putAll(IriSource.CheckInPage.getMapWithParameter());
      }
    }
  }
  
  public boolean a()
  {
    boolean bool2 = true;
    boolean bool1;
    if (ContributionSearchFragment.b(a) != BusinessContributionType.CHECK_IN)
    {
      bool1 = bool2;
      if (!ContributionSearchFragment.e(a).equals(a.getString(2131165670))) {}
    }
    else
    {
      bool1 = bool2;
      if (a.getActivity() != null)
      {
        a.a(true);
        ContributionSearchFragment.a(a, null);
        ((YelpActivity)a.getActivity()).onProvidersRequired(ContributionSearchFragment.f(a), false, 0);
        bool1 = false;
      }
    }
    return bool1;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if ((ContributionSearchFragment.a(a) == null) || (ContributionSearchFragment.a(a).isEmpty()))
    {
      a.a(ErrorType.getTypeFromException(paramYelpException));
      return;
    }
    a.a(true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */