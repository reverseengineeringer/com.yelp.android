package com.yelp.android.ui.activities.profile;

import android.os.Bundle;
import android.widget.ListAdapter;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.feed.CurrentUserFeedFragment;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.util.ErrorType;
import java.util.List;

public abstract class SingleCurrentUserFeedEntryFragment<ObjectType extends FeedEntry>
  extends CurrentUserFeedFragment
{
  protected ApiRequest<?, ?, ?> c;
  protected int d;
  protected User e;
  
  private static void a(User paramUser, int paramInt, Bundle paramBundle)
  {
    paramBundle.putInt("objects_total", paramInt);
    paramBundle.putParcelable("user", paramUser);
  }
  
  public static void a(SingleCurrentUserFeedEntryFragment paramSingleCurrentUserFeedEntryFragment, User paramUser, int paramInt)
  {
    Bundle localBundle = paramSingleCurrentUserFeedEntryFragment.getArguments();
    if (localBundle != null)
    {
      a(paramUser, paramInt, localBundle);
      return;
    }
    localBundle = new Bundle();
    a(paramUser, paramInt, localBundle);
    paramSingleCurrentUserFeedEntryFragment.setArguments(localBundle);
  }
  
  public void b()
  {
    if (r().isEmpty()) {
      a(c);
    }
  }
  
  protected void c(List<ObjectType> paramList)
  {
    a(paramList);
    if ((d().size() >= d) || (d().isEmpty())) {
      a(true);
    }
    j();
  }
  
  protected abstract int g();
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (r() == null) {
      if (!AppData.b().m().a(e)) {
        break label106;
      }
    }
    label106:
    for (paramBundle = FeedType.ME;; paramBundle = FeedType.USER)
    {
      a(paramBundle);
      b(d());
      if (((r() != null) && (r().getCount() >= d)) || (d == 0))
      {
        a(true);
        if (d == 0)
        {
          a(ErrorType.NO_FEED_ITEMS);
          y().setText(g());
        }
      }
      return;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    d = getArguments().getInt("objects_total", 0);
    e = ((User)getArguments().getParcelable("user"));
  }
  
  public void onDetach()
  {
    super.onDetach();
    b(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.SingleCurrentUserFeedEntryFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */