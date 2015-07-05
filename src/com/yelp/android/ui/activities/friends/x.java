package com.yelp.android.ui.activities.friends;

import android.view.View;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.FriendRequestAcknowledgment;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;
import com.yelp.android.ui.util.cr;

class x
  implements i
{
  x(ReviewFriendRequest paramReviewFriendRequest) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    paramApiRequest = (FriendRequestAcknowledgment)paramApiRequest;
    ReviewFriendRequest.a(a, paramApiRequest.a(), paramApiRequest.b());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    if (a.isFinishing()) {
      return;
    }
    a.disableLoading();
    cr.a(paramYelpException.getMessage(a), 0);
    a.findViewById(2131493200).performHapticFeedback(0, 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */