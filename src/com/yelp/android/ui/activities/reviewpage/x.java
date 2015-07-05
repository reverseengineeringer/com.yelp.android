package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;

class x
  implements m<String>
{
  x(FlagReviewExplanationFragment paramFlagReviewExplanationFragment) {}
  
  private void a(String paramString)
  {
    if (FlagReviewExplanationFragment.a(a) != null) {
      FlagReviewExplanationFragment.a(a).a(paramString);
    }
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, String paramString)
  {
    a(paramString);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a(paramYelpException.getMessage(AppData.b()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */