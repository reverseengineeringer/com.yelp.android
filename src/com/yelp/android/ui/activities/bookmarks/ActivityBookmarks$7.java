package com.yelp.android.ui.activities.bookmarks;

import android.view.ViewGroup;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.a;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.ArrayList;

class ActivityBookmarks$7
  extends k.b<ListBookmarksRequest.a>
{
  ActivityBookmarks$7(ActivityBookmarks paramActivityBookmarks) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ListBookmarksRequest.a parama)
  {
    ActivityBookmarks.a(a, parama);
    a.b();
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.disableLoading();
    ActivityBookmarks.a(a).clear();
    ActivityBookmarks.h(a).m().f();
    ActivityBookmarks.o(a).setVisibility(8);
    a.onError(paramApiRequest, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityBookmarks.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */