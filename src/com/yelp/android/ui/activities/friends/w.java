package com.yelp.android.ui.activities.friends;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.FriendRequest;
import com.yelp.android.serializable.User;
import java.util.Iterator;
import java.util.List;

class w
  implements m<List<FriendRequest>>
{
  w(ReviewFriendRequest paramReviewFriendRequest) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<FriendRequest> paramList)
  {
    a.disableLoading();
    paramApiRequest = paramList.iterator();
    while (paramApiRequest.hasNext())
    {
      paramList = (FriendRequest)paramApiRequest.next();
      if (paramList.getSender().getId().equals(ReviewFriendRequest.a(a)))
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
 * Qualified Name:     com.yelp.android.ui.activities.friends.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */