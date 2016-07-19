package com.yelp.android.ui.activities.talk;

import android.content.Intent;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.en.a;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.ui.activities.support.b;

class ActivityTalkPost$3
  extends k.b<en.a>
{
  ActivityTalkPost$3(ActivityTalkPost paramActivityTalkPost) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, en.a parama)
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
 * Qualified Name:     com.yelp.android.ui.activities.talk.ActivityTalkPost.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */