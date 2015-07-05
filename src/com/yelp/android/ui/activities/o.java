package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.dialogs.bn;
import com.yelp.android.ui.util.cr;

class o
  implements i
{
  private YelpBusiness b;
  
  public o(ActivityBookmarks paramActivityBookmarks, YelpBusiness paramYelpBusiness)
  {
    b = paramYelpBusiness;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    if (ActivityBookmarks.g(a) != null) {
      ActivityBookmarks.g(a).dismiss();
    }
    ActivityBookmarks.a(a, b);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (ActivityBookmarks.g(a) != null) {
      ActivityBookmarks.g(a).dismiss();
    }
    cr.a(2131165764, 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */