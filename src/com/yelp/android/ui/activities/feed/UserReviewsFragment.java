package com.yelp.android.ui.activities.feed;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.gy;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.BusinessInfoProviderFeedEntry;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.profile.SingleCurrentUserFeedEntryFragment;
import java.util.List;

public class UserReviewsFragment
  extends SingleCurrentUserFeedEntryFragment<BusinessInfoProviderFeedEntry>
{
  private m<List<BusinessInfoProviderFeedEntry>> g = new bt(this);
  
  public static SingleCurrentUserFeedEntryFragment a(User paramUser, int paramInt)
  {
    UserReviewsFragment localUserReviewsFragment = new UserReviewsFragment();
    SingleCurrentUserFeedEntryFragment.a(localUserReviewsFragment, paramUser, paramInt);
    return localUserReviewsFragment;
  }
  
  public void b()
  {
    super.b();
    if ((c == null) || (c.isCompleted()))
    {
      c = new gy(g, e, p(), q(), false);
      c.execute(new Object[0]);
    }
  }
  
  protected int g()
  {
    return 2131166148;
  }
  
  public b getIri()
  {
    return ViewIri.ProfileReviews;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (AppData.b().m().a(e))
    {
      getActivity().setTitle(2131166147);
      return;
    }
    getActivity().setTitle(getString(2131166809, new Object[] { e.getFirstName() }));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.UserReviewsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */