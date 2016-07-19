package com.yelp.android.ui.activities.friends;

import android.view.View;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.FriendRequestAcknowledgment;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.ui.util.as;

class ReviewFriendRequest$5
  implements c.a
{
  ReviewFriendRequest$5(ReviewFriendRequest paramReviewFriendRequest) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    paramApiRequest = (FriendRequestAcknowledgment)paramApiRequest;
    ReviewFriendRequest.a(a, paramApiRequest.b(), paramApiRequest.d());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    if (a.isFinishing()) {
      return;
    }
    a.disableLoading();
    as.a(paramYelpException.getMessage(a), 0);
    a.findViewById(2131689868).performHapticFeedback(0, 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.ReviewFriendRequest.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */