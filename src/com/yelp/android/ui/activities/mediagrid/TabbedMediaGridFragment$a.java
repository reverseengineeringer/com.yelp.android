package com.yelp.android.ui.activities.mediagrid;

import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.serializable.MediaCategory;
import com.yelp.android.serializable.MediaPayload;
import com.yelp.android.serializable.YelpBusiness;

public abstract interface TabbedMediaGridFragment$a
{
  public abstract MediaRequest a(YelpBusiness paramYelpBusiness, MediaCategory paramMediaCategory, ApiRequest.b<MediaPayload> paramb);
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mediagrid.TabbedMediaGridFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */