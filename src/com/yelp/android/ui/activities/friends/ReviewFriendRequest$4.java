package com.yelp.android.ui.activities.friends;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.FriendRequest;
import com.yelp.android.serializable.User;
import java.util.Iterator;
import java.util.List;

class ReviewFriendRequest$4
  implements ApiRequest.b<List<FriendRequest>>
{
  ReviewFriendRequest$4(ReviewFriendRequest paramReviewFriendRequest) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<FriendRequest> paramList)
  {
    a.disableLoading();
    paramApiRequest = paramList.iterator();
    while (paramApiRequest.hasNext())
    {
      paramList = (FriendRequest)paramApiRequest.next();
      if (paramList.j().ae().equals(ReviewFriendRequest.a(a)))
      {
        ReviewFriendRequest.a(a, paramList);
        ReviewFriendRequest.b(a, paramList);
      }
    }
    if (ReviewFriendRequest.b(a) == null) {
      a.finish();
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    if (a.isFinishing()) {
      return;
    }
    a.disableLoading();
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.ReviewFriendRequest.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */