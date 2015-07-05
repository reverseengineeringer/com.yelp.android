package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cd;
import com.yelp.android.av.i;

class bn
  implements i
{
  bn(bm parambm) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    new cd(true, null).execute(new Void[0]);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */