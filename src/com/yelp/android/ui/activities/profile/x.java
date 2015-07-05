package com.yelp.android.ui.activities.profile;

import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.feed.FeedRequestResult;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.List;

class x
  extends j<FeedRequestResult>
{
  x(UserProfileFragment paramUserProfileFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, FeedRequestResult paramFeedRequestResult)
  {
    UserProfileFragment.c(a).addAll(paramFeedRequestResult.a());
    if (paramFeedRequestResult.a().isEmpty())
    {
      paramFeedRequestResult = a.getActivity().getLayoutInflater().inflate(2130903336, a.m(), false);
      TextView localTextView = (TextView)paramFeedRequestResult.findViewById(2131493902);
      if (AppData.b().m().a(UserProfileFragment.d(a)))
      {
        paramApiRequest = a.getText(2131166142);
        localTextView.setText(paramApiRequest);
        a.m().addFooterView(paramFeedRequestResult, null, false);
      }
    }
    for (;;)
    {
      a.a(true);
      return;
      paramApiRequest = a.getString(2131166807, new Object[] { UserProfileFragment.d(a).getFirstName() });
      break;
      a.b(paramFeedRequestResult.a());
    }
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    UserProfileFragment.b(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */