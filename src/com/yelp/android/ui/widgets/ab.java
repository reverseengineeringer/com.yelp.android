package com.yelp.android.ui.widgets;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.reviewpage.ReviewFragment;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;
import java.util.Iterator;

class ab
  implements i
{
  ab(ReviewPagerFragment paramReviewPagerFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    paramVoid = (ReviewVoteRequest)paramApiRequest;
    Iterator localIterator = ReviewPagerFragment.a(a).iterator();
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      paramApiRequest = (YelpBusinessReview)localIterator.next();
    } while (!paramApiRequest.getId().equals(paramVoid.c()));
    for (;;)
    {
      new ObjectDirtyEvent(paramApiRequest, "com.yelp.android.review.update").a(a.getActivity());
      return;
      paramApiRequest = null;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    paramApiRequest = (ReviewVoteRequest)paramApiRequest;
    int i = 0;
    for (;;)
    {
      if ((i >= ReviewPagerFragment.a(a).size()) || (((YelpBusinessReview)ReviewPagerFragment.a(a).get(i)).getId().equals(paramApiRequest.c())))
      {
        int j = i;
        if (i == 0)
        {
          j = i;
          if ((ReviewPagerFragment.b(a).getItem(0) instanceof ReviewPagerFragment.LoadingFragment)) {
            j = i + 1;
          }
        }
        ((ReviewFragment)ReviewPagerFragment.b(a).instantiateItem(ReviewPagerFragment.c(a), j)).a();
        cr.a(paramYelpException.getMessage(AppData.b()), 1);
        return;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */