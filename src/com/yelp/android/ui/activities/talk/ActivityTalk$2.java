package com.yelp.android.ui.activities.talk;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dr.a;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.Location;

class ActivityTalk$2
  extends k.b<dr.a>
{
  ActivityTalk$2(ActivityTalk paramActivityTalk) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dr.a parama)
  {
    if ((b) && (a != null)) {
      ActivityTalk.a(a, a.h());
    }
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.ActivityTalk.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */