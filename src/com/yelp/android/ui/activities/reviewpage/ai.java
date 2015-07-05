package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.i;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.ActivityFirstTranslation;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

class ai
  implements m<Map<String, String>>
{
  ai(PanelReviewTranslate paramPanelReviewTranslate) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Map<String, String> paramMap)
  {
    PanelReviewTranslate.a(a, PanelReviewTranslate.TranslateState.TRANSLATED);
    paramApiRequest = PanelReviewTranslate.b(a).iterator();
    while (paramApiRequest.hasNext())
    {
      YelpBusinessReview localYelpBusinessReview = (YelpBusinessReview)paramApiRequest.next();
      String str = (String)paramMap.get(localYelpBusinessReview.getId());
      if (str != null)
      {
        localYelpBusinessReview.setTranslatedText(str);
        localYelpBusinessReview.setDisplayTranslatedText(true);
      }
    }
    new ObjectDirtyEvent(PanelReviewTranslate.b(a), "com.yelp.android.review.translate").a(a.getContext());
    a.a();
    if (PanelReviewTranslate.c(a) != null) {
      PanelReviewTranslate.c(a).a();
    }
    if (AppData.b().f().X()) {
      a.getContext().startActivity(ActivityFirstTranslation.a(a.getContext(), PanelReviewTranslate.b(a).size()));
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    paramApiRequest = PanelReviewTranslate.b(a).iterator();
    while (paramApiRequest.hasNext())
    {
      YelpBusinessReview localYelpBusinessReview = (YelpBusinessReview)paramApiRequest.next();
      if (localYelpBusinessReview.getTranslatedText() == null) {
        localYelpBusinessReview.setDisplayTranslatedText(false);
      }
    }
    a.a(paramYelpException.getMessage(a.getContext()));
    PanelReviewTranslate.a(a, PanelReviewTranslate.TranslateState.ORIGINAL);
    a.a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */