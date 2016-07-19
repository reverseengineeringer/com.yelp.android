package com.yelp.android.ui.activities.bookmarks;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.dialogs.e;
import com.yelp.android.ui.util.as;

class ActivityComboBookmarks$b
  implements c.a
{
  private YelpBusiness b;
  
  public ActivityComboBookmarks$b(ActivityComboBookmarks paramActivityComboBookmarks, YelpBusiness paramYelpBusiness)
  {
    b = paramYelpBusiness;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    if (ActivityComboBookmarks.i(a) != null) {
      ActivityComboBookmarks.i(a).dismiss();
    }
    ActivityComboBookmarks.a(a, b);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (ActivityComboBookmarks.i(a) != null) {
      ActivityComboBookmarks.i(a).dismiss();
    }
    as.a(2131165849, 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityComboBookmarks.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */