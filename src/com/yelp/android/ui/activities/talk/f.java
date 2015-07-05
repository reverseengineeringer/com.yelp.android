package com.yelp.android.ui.activities.talk;

import android.content.Intent;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ft;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.ui.activities.support.h;

class f
  extends j<ft>
{
  f(ActivityTalkPost paramActivityTalkPost) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ft paramft)
  {
    paramApiRequest = new Intent();
    paramApiRequest.putExtra("talk_topic", a);
    a.setResult(-1, paramApiRequest);
    a.getHelper().h();
    a.finish();
  }
  
  public boolean a()
  {
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.getHelper().h();
    ActivityTalkPost.a(a, paramYelpException);
    a.showDialog(3);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */